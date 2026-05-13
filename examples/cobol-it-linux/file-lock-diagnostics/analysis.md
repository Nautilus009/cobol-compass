# File Lock Diagnostics Analysis

## Observed Facts

- `SAMPLE_JOB` timed out waiting for `SAMPLE_RESOURCE.lock`.
- The log identifies both owner and requester process IDs.
- The job ended with return code `12`.

## Likely Cause

The resource was already locked by another process, or a stale lock was not cleaned up after an abnormal exit.

## Next Checks

- Verify whether owner process `12345` is still running.
- Check scheduler history for overlapping runs.
- Review abnormal exit cleanup paths.

