# Code Review Checklist

- Does the change preserve existing business behavior outside the requested scope?
- Is the change minimal and easy to review?
- Are affected copybooks, file layouts, database calls, and message contracts identified?
- Are file status, SQL status, transaction status, or return codes checked consistently?
- Are numeric sizes, signs, truncation, rounding, and overflow risks reviewed?
- Are initialization and reset paths correct?
- Are error paths and rollback paths covered?
- Is a focused test plan included?
- Are dialect, platform, runtime, and site rules followed?

