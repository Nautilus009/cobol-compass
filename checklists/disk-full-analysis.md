# Disk Full Analysis Checklist

Use this checklist when COBOL or runtime processing fails because a filesystem is full or near full.

## Collect

- Filesystem name
- Mount point
- Available space
- Inode availability
- Temporary directory path
- Output file path
- Sort work file path
- Process ID
- Job or service name
- Cleanup behavior
- Retained temporary files

## Review

- Did the process use the expected filesystem?
- Are temporary files cleaned after normal and abnormal exits?
- Is the failure during input, output, sort, database extract, or log write?
- Is there an archival or retention issue?
- Is monitoring alerting before the filesystem reaches failure level?

