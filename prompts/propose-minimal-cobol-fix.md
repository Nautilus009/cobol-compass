# Propose Minimal COBOL Fix

Analyze the provided COBOL code, logs, and context.

Use the active Cobol Compass profile.

## Required Output

1. Active profile assumptions
2. Observed facts
3. Assumptions
4. Suspected issue
5. Minimal safe fix
6. Exact code change
7. Risk level
8. Test plan
9. Rollback consideration

## Rules

- Prefer the smallest safe change.
- Do not rewrite unrelated code.
- Preserve existing style.
- Do not invent copybooks, file formats, message formats, or database schemas.
- Ask for missing source, copybooks, runtime config, or logs when necessary.

