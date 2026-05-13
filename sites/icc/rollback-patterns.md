# ICC Rollback Patterns

Rollback behavior must follow the local transaction model.

Before changing rollback logic:

- Identify what resources are updated.
- Identify commit and rollback boundaries.
- Review how failures are logged.
- Confirm whether rerun or manual recovery is expected.
- Include failure-path tests in the test plan.

