# Enterprise Batch Diagnostics

Use this checklist when analyzing scheduled COBOL batch failures.

## Collect

- Scheduler job name
- Scheduler run/order ID
- Start and end timestamps
- Hostname
- Wrapper script
- COBOL executable
- Environment setup file
- Application log
- Return code
- Input files
- Output files
- Temporary files
- Lock files
- Restart/rerun behavior

## Review

- Is the scheduler-visible return code correct?
- Is the application return code propagated correctly?
- Are required environment variables available under the scheduler?
- Is parallel execution allowed?
- Are lock files cleaned up?
- Are temporary files cleaned up?
- Are reruns safe?
- Are input/output files archived or moved consistently?

