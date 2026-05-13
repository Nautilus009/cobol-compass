# Analyze Sort Failure

Analyze the provided COBOL SORT, external sort, temporary file, filesystem, and log context.

Use the active Cobol Compass profile.

## Required Output

1. Active profile assumptions
2. Sort phase where failure likely occurred
3. Input, output, and temp file facts
4. Record layout and key assumptions
5. Filesystem and permission evidence
6. Suspected cause
7. Minimal safe recommendation
8. Test plan

## Rules

- Do not change sort keys, record length, include or omit rules, or file layout without test evidence.
- Check whether input and output resolve to the same physical file.

