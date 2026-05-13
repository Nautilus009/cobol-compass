# Sort Temporary File Failure Analysis

## Observed Facts

- Sort failed during the output phase.
- Temporary files were written under `/app/tmp`.
- The log reports a temporary file write failure.

## Likely Cause

The most likely causes are insufficient temporary filesystem space, permissions, or a runtime sort-handler issue.

## Next Checks

- Check available space and inodes on `/app/tmp`.
- Check ownership and permissions.
- Confirm whether temp files remained after failure.
- Confirm input and output do not resolve to the same physical file.

