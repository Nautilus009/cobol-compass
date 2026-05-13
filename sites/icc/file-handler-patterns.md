# ICC File Handler Patterns

- Preserve existing file status checks.
- Do not change SELECT, ASSIGN, organization, access mode, or record key clauses casually.
- Include file status values in error handling where nearby code does so.
- Test missing file, permission failure, empty file, duplicate key, and EOF paths when relevant.

