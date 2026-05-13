# Oracle DB Call Patterns

- Preserve existing SQL status checks.
- Review cursor open, fetch, close, and error paths.
- Avoid changing commit or rollback behavior without explicit approval.
- Verify bind field lengths and numeric precision.
- Test no-row, one-row, many-row, duplicate, and database-error cases when relevant.

