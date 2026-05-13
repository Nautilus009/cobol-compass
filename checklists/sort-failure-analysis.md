# COBOL Sort Failure Analysis Checklist

Use this checklist when analyzing COBOL SORT, external sort handlers, or wrapper-based sort failures.

## Collect

- Input file path
- Output file path
- Temporary directory
- Record length
- Sort keys
- Include or omit rules
- Resolved physical paths
- Available filesystem space
- File permissions
- Remaining temporary files
- File status or runtime error
- Whether input and output resolve to the same physical file

## Review

- Is the temp directory large enough?
- Are temp files cleaned after failure?
- Are sort keys aligned to the correct record layout?
- Are record lengths consistent?
- Are input and output files accidentally the same file?
- Is the sort using internal runtime sort or an external/custom sort handler?
- Does failure occur during sort initialization, input phase, output phase, or termination?

## AI Guidance

Do not change sort keys, record length, include or omit rules, or file layout without test evidence.

