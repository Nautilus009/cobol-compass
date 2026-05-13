# Online Service Timeout Analysis Checklist

Use this checklist when an online COBOL service receives a request but does not return before timeout.

## Collect

- Service name
- Server executable
- Request timestamp
- Timeout timestamp
- Application log lines
- Middleware log lines
- Input and output buffer sizes
- Database status
- File status
- Transaction state
- Core file or stack trace if available

## Review

- Did the request reach the service?
- Did the application enter the expected module?
- Did the application return to the middleware?
- Is there a database wait?
- Is there a file lock?
- Is there an external call that did not return?
- Is there a loop exit condition problem?

