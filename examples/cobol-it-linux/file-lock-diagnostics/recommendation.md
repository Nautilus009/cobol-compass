# File Lock Diagnostics Recommendation

Do not remove lock protection without understanding the concurrency model.

Recommended minimal improvements:

- Log lock owner and requester consistently.
- Confirm stale lock cleanup behavior.
- Serialize overlapping scheduler runs if parallel execution is not allowed.
- Add a focused test for abnormal exit cleanup.

