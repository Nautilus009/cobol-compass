# Production Incident Analysis Checklist

Use this checklist when analyzing a production incident involving COBOL, batch, online services, middleware, files, or database work.

## Collect

- Incident timestamp
- Affected service, job, or module
- Host or runtime environment
- User-visible impact
- Application logs
- Runtime logs
- Scheduler or middleware status
- Return codes and status fields
- Recent deployments or configuration changes
- Input, output, and temporary resource names using sanitized placeholders

## Review

- What failed first?
- Is the failure reproducible?
- Is the issue data-specific, environment-specific, or code-specific?
- Did error handling preserve enough diagnostic information?
- Did rollback or cleanup run?
- Are downstream jobs, services, or messages affected?
- Is a minimal mitigation available?

## AI Guidance

Separate observed facts from assumptions. Do not propose code changes until the affected dialect, platform, runtime, and active profile are clear.

