# COBOL/C Interface Review Checklist

Use this checklist when COBOL calls C, C calls COBOL, or runtime/helper libraries bridge COBOL and native code.

## Review

- Parameter passing convention
- `BY REFERENCE`, `BY VALUE`, or `BY CONTENT` usage
- Integer size assumptions
- Pointer size assumptions
- C `long` size on the target platform
- Structure layout and alignment
- Packed decimal and binary field mapping
- String termination rules
- Buffer length handling
- Memory ownership
- Thread/process safety
- Error/status propagation
- Runtime library compatibility

## AI Guidance

Never invent C structure layouts or COBOL copybook mappings.

Ask for the COBOL source, copybooks, C headers, C source, compiler options, and link options before recommending interface changes.

