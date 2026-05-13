# Database Status and Transaction Review

Use this checklist when COBOL code interacts with a relational database.

## Review

- SQL status handling
- Commit/rollback behavior
- Transaction boundary
- Cursor lifecycle
- Lock/wait behavior
- Deadlock or timeout handling
- Error logging
- Retry behavior
- Consistency between application status and SQL status
- Whether database errors are propagated to the caller

## AI Guidance

Do not change commit or rollback behavior without explicit requirement and full regression testing.

When proposing a fix, preserve existing transaction boundaries unless the defect is specifically transaction-related.

