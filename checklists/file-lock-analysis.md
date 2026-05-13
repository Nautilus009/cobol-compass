# File Lock Analysis Checklist

Use this checklist when a COBOL, batch, or online process fails due to a locked file or locked resource.

## Collect

- Locked resource name
- Lock owner
- Lock requester
- Hostname
- Process ID
- Executable or script name
- Scheduler job ID if applicable
- Start timestamp
- Failure timestamp
- Retry behavior
- Timeout behavior
- Cleanup behavior

## Review

- Is the lock owner still running?
- Is the lock stale or active?
- Is parallel execution allowed?
- Is there a missing unlock path?
- Is there an abnormal exit path that skips cleanup?
- Is the scheduler allowing overlapping runs?
- Is the diagnostic logging clear enough to identify both owner and requester?

## AI Guidance

Do not suggest removing lock protection unless the concurrency model is fully understood.

Prefer improving diagnostics, cleanup, timeout handling, or scheduler serialization before changing business logic.

