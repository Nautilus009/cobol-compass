# Testing Guidelines

- Compile with the target compiler and production-like options.
- Run the smallest test that proves the changed behavior.
- Add regression checks for nearby behavior that should not change.
- Include normal, boundary, and error-path tests.
- For file handling, test missing file, empty file, invalid status, duplicate key, and permission failures when relevant.
- For batch jobs, verify exit codes and scheduler-visible status.
- For transaction services, verify success, expected failure, rollback, and timeout behavior.

