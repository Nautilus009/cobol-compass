# Sample Test Plan

## Compile

- Compile with COBOL-IT using the same options as the target environment.

## Runtime

- Confirm required environment variables are set.
- Confirm the working directory contains `input.dat`.

## Cases

- Normal file with multiple records
- Empty file
- Missing file
- Permission denied
- Long or malformed input where applicable

## Expected Results

- Normal records are displayed.
- Empty files close cleanly.
- Missing or unreadable files report a non-`00` file status.

