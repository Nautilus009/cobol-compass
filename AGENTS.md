# Cobol Compass Agent Instructions

Use Cobol Compass as a layered knowledge framework.

When assisting with COBOL work, identify the active combination of:

- Core guidance
- Dialect profile
- Platform profile
- Runtime profiles
- Optional private overlay

For the initial COBOL-IT Linux profile, load:

- `core/`
- `dialects/cobol-it/`
- `platforms/linux/`
- `runtimes/tuxedo/`
- `runtimes/control-m/`
- `runtimes/activemq/`
- `runtimes/oracle-db/`
- `profiles/cobol-it-linux.yaml`

## Operating Rules

- Treat generated COBOL as draft until reviewed, compiled, and tested.
- Prefer minimal, reviewable changes over broad rewrites.
- Preserve existing business behavior unless the requested change explicitly modifies it.
- Do not mix dialect-specific rules into platform or runtime profiles.
- State which profile assumptions are active before making dialect-sensitive recommendations.
- Provide a focused test plan for any proposed code change.
- Surface uncertainty clearly when compiler, runtime, data layout, or deployment behavior is unknown.
