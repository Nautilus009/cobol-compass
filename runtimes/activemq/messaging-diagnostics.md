# ActiveMQ Messaging Diagnostics

Use this checklist when analyzing COBOL or native-code integrations with ActiveMQ.

## Collect

- Broker host and port
- Queue or topic name
- Producer process
- Consumer process
- Message ID if available
- Timestamp
- Message size
- Acknowledgment mode
- Retry count
- Timeout setting
- Error log
- Broker resource status

## Review

- Was the message produced?
- Was the message consumed?
- Was it acknowledged?
- Was the message redelivered?
- Did timeout or connection loss occur?
- Is message format compatible between producer and consumer?
- Are error logs sufficient to correlate both sides?

