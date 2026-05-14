# COBOL-IT Hello World

This is a minimal COBOL-IT demo program for the `cobol-it-linux` profile.

This version is written for the private overlay setting:

- `dialect.source_format: free`
- `platform.distribution: Red Hat Enterprise Linux 7.6`
- Each section has start and exit paragraphs
- Each paragraph ends with a dot

## Program

- Source: `hello_world.cob`
- Program ID: `HELLO_WORLD`

## Expected Output

```text
Hello from COBOL-IT on Linux
```

## Style Notes

- `A-MAIN SECTION.` defines the section.
- `A-00.` is the start paragraph.
- `A-EXIT.     EXIT.` is the exit paragraph style.
- Initialization is placed in `B-INIT`.
- Business work is placed in `C-PROCESS`.
- Program termination is placed in `Z-FINISH`.
- Paragraph bodies end with a period on a separate line where the local style uses that pattern.

## Notes

- Compile with the COBOL-IT command and options used by your local environment.
- Treat this as a syntax and style smoke test.
