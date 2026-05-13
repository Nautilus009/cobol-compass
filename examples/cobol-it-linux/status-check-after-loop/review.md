# Status Check After Loop Review

## Summary

The example adds a loop exit condition for `APP-STATUS` and checks the status after the loop before normal completion.

## Risk

Low to medium. The change preserves the loop structure but changes behavior when `PROCESS-NEXT-RECORD` sets an error status.

## Review Points

- Confirm `APP-STATUS-OK` and `APP-STATUS-ERROR` values match the real application convention.
- Confirm rollback is appropriate for this failure path.
- Confirm DISPLAY text is acceptable for the operational log.

