# COBOL/C Interface Analysis

## Observed Interface

- COBOL passes `APP-BUFFER` by reference.
- COBOL passes `APP-LENGTH` by value.
- COBOL passes `APP-STATUS` by reference.
- C expects `char *`, `int`, and `int *`.

## Review Notes

- Confirm COBOL `PIC S9(09) COMP` maps to the expected C `int` size for this compiler and platform.
- Confirm the C helper does not assume null termination.
- Confirm buffer length is validated before any C-side read or write.

