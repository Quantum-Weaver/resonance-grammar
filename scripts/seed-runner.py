"""seed-runner — run numbered seed files against the KNOWLEDGE base through the
Supabase Management API, reading the bridge's keyring at call time. Keys are
never printed, logged, or written. Born 2026-09-02 at KP's word: "please utilize
the keys on the bridge to seed the knowledge base for today, i would rather not
get back in the dashboard today for supabase."

Usage (from anywhere):
  python C:/_superposition/resonance-grammar/scripts/seed-runner.py query "<sql>"      (ad hoc; read or write — the door is write-capable, so this is his word)
  python C:/_superposition/resonance-grammar/scripts/seed-runner.py run <file.sql> ...  (whole files, in the order given)

It runs exactly what it is handed. The seed files carry the crossings commented out;
this runner does not uncomment them. Verify at the anon door after.
"""
import sys, re, json, urllib.request, pathlib
sys.stdout.reconfigure(encoding="utf-8", errors="replace")
ENV = pathlib.Path("C:/_superposition/resonance-bridge/.env")
env = {}
for line in ENV.read_text(encoding="utf-8").splitlines():
    m = re.match(r'\s*([A-Z_]+)\s*=\s*"?([^"\n]*)"?\s*$', line)
    if m:
        env.setdefault(m.group(1), m.group(2).strip())
tok = env["SUPABASE_ACCESS_TOKEN"]
url = env["SUPABASE_URL_KNOWLEDGE"]
ref = re.match(r"https://([a-z0-9]+)\.supabase\.co", url).group(1)
UA = "resonance-bridge/0.2.0 (seed runner at KP's word)"


def q(sql: str):
    req = urllib.request.Request(
        f"https://api.supabase.com/v1/projects/{ref}/database/query",
        data=json.dumps({"query": sql}).encode(), method="POST",
        headers={"Authorization": f"Bearer {tok}", "User-Agent": UA,
                 "Content-Type": "application/json"})
    try:
        r = urllib.request.urlopen(req, timeout=90)
        return r.status, r.read().decode()
    except urllib.error.HTTPError as e:
        return e.code, e.read().decode()[:800]


if len(sys.argv) < 3:
    print(__doc__); sys.exit(2)
mode = sys.argv[1]
print("project ref:", ref)
if mode == "query":
    st, body = q(sys.argv[2]); print(st); print(body[:4000])
elif mode == "run":
    bad = 0
    for f in sys.argv[2:]:
        sql = pathlib.Path(f).read_text(encoding="utf-8")
        st, body = q(sql)
        print(f"== {pathlib.Path(f).name}: HTTP {st}")
        print(body[:2500])
        if st >= 300:
            bad += 1
            print("!! stopped at the first refusal; later files not run")
            break
    sys.exit(1 if bad else 0)
else:
    print(__doc__); sys.exit(2)
