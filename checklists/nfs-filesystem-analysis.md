# NFS Filesystem Analysis Checklist

Use this checklist when COBOL processing depends on files stored on NFS or another network filesystem.

## Collect

- Mount point
- Mount options
- File path
- File owner and permissions
- Process host
- File server if known
- Lock behavior
- Timestamp behavior
- Error messages

## Review

- Are file locks reliable for this workload?
- Are multiple hosts writing the same path?
- Are timestamp or cache semantics affecting processing?
- Are stale handles or network interruptions present?
- Is local temporary storage required for sort or intermediate work?

