# Tuxedo Service Timeout Analysis

Use this checklist when a Tuxedo service receives a request but does not return a response before timeout.

## Collect

- Service name
- Server executable
- Server group
- Server ID
- Request timestamp
- Response timestamp if available
- ULOG lines
- Application log lines
- Input buffer type and size
- Output buffer type and size
- Database status
- File status
- Transaction state
- Core file if generated
- Stack trace if available

## Review

- Did the service receive the request?
- Did the application enter the expected module?
- Did the application return to Tuxedo?
- Was the process killed by service timeout?
- Is there a database wait?
- Is there a file lock?
- Is there an external call that did not return?
- Is there a loop exit condition problem?
- Is logging sufficient around service entry and exit?

## AI Guidance

Separate observed facts from assumptions.

Do not recommend increasing timeout until the cause of the delay is understood.

