# ICC C Integration Rules

For ICC C integration:

- Remember that C `long` variables are 64-bit by default on the target Linux environment.
- Verify field sizes across COBOL and C.
- Confirm whether parameters are passed by reference or value.
- Check null-terminated string expectations.
- Review memory ownership and buffer lifetime.
- Include boundary-size and invalid-input tests.

