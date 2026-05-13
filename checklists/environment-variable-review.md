# Environment Variable Review Checklist

Use this checklist when runtime behavior depends on shell or scheduler-provided environment variables.

## Collect

- Runtime variables
- Library path variables
- Database variables
- Middleware variables
- File path variables
- Scheduler variables
- Default values
- Sensitive variables that must not be logged

## Review

- Are required variables exported?
- Are variables identical between interactive and scheduler runs?
- Are paths absolute where required?
- Are sensitive values protected?
- Are variable names documented in the active profile or private overlay?

