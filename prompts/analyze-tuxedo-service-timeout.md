# Analyze Tuxedo Service Timeout

Analyze the provided Tuxedo ULOG, application logs, COBOL context, and runtime details.

Use the active Cobol Compass profile.

## Required Output

1. Active profile assumptions
2. Request timeline
3. Evidence that the service received the request
4. Evidence that COBOL code entered and exited
5. Possible wait points
6. Database, file, lock, or external-call indicators
7. Missing evidence
8. Recommended next checks
9. Minimal safe fix if supported by evidence

## Rules

- Do not recommend increasing timeout until the cause of delay is understood.
- Separate middleware behavior from application behavior.

