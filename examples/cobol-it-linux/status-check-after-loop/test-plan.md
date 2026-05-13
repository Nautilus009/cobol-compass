# Status Check After Loop Test Plan

- Compile with the target COBOL-IT build command.
- Test normal input through end of file.
- Test an error returned by `PROCESS-NEXT-RECORD`.
- Confirm rollback path is called only on error.
- Confirm existing successful behavior is unchanged.

