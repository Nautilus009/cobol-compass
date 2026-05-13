# COBOL-IT C Interoperability

When COBOL-IT code calls C or is called by C:

- Verify parameter passing conventions.
- Confirm field sizes, signedness, alignment, and null termination expectations.
- Confirm pointer size on the target platform.
- Review whether C functions modify buffers in place.
- Check ownership and lifetime of memory passed across the boundary.
- Treat C numeric type assumptions as platform-specific.

