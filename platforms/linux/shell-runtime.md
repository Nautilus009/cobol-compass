# Linux Shell Runtime

When COBOL programs run from shell scripts:

- Identify the working directory.
- Capture exported environment variables.
- Verify path setup and shared library paths.
- Preserve scheduler-visible exit code behavior.
- Avoid changing stdout or stderr conventions without checking operational use.
- Confirm whether scripts use `set -e`, traps, or custom return-code mapping.

