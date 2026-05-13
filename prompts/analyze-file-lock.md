# Analyze File Lock

Analyze the provided lock failure, process list, scheduler details, and logs.

Use the active Cobol Compass profile.

## Required Output

1. Active profile assumptions
2. Locked resource
3. Lock owner and requester
4. Evidence of stale or active lock
5. Concurrency model assumptions
6. Cleanup and timeout behavior
7. Minimal safe recommendation
8. Test plan

## Rules

- Do not suggest removing lock protection unless the concurrency model is fully understood.
- Prefer diagnostics, cleanup, timeout handling, or scheduler serialization before business logic changes.

