# COBOL-IT File Handling

Review file operations carefully. A small file-handling change can affect production batch behavior.

Check:

- File organization and access mode
- SELECT and ASSIGN clauses
- File status fields
- Open mode
- Duplicate key behavior
- Missing file behavior
- Permission failure behavior
- EXTFH configuration
- Runtime environment variables

Generated changes should preserve existing status checks and error-handling patterns unless the requested fix is specifically about those paths.

