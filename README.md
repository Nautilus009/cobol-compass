# Cobol Compass

Cobol Compass is an AI-ready knowledge framework for COBOL development, modernization, maintenance, and review.

It helps developers and AI coding assistants understand the specific COBOL dialect, operating platform, and runtime stack used by a project.

Cobol Compass does not replace experienced COBOL developers. It helps developers analyze code, propose minimal changes, review risks, create test plans, and document production-safe fixes.

## Goals

- Support multiple COBOL dialects.
- Support multiple operating platforms.
- Support multiple runtime environments.
- Keep dialect, platform, and runtime rules separated.
- Encourage minimal, safe, reviewable code changes.
- Improve AI-assisted COBOL development with clear rules and examples.
- Preserve existing business logic and production behavior.

## Initial Supported Profile

The first supported profile is:

- Dialect: COBOL-IT
- Platform: Linux
- Runtime examples: Oracle Tuxedo, BMC Control-M, ActiveMQ, Oracle DB

See [profiles/cobol-it-linux.yaml](profiles/cobol-it-linux.yaml).

Future profiles can combine other dialects and platforms, for example:

- HP COBOL on OpenVMS
- IBM Enterprise COBOL on IBM mainframe or z/OS
- Micro Focus COBOL on Linux or Windows
- GnuCOBOL on Linux

## Architecture

Cobol Compass is organized into three layers:

1. Core COBOL engineering principles
2. COBOL dialect profiles
3. Platform and runtime profiles

Example active profile:

```text
core/
dialects/cobol-it/
platforms/linux/
runtimes/tuxedo/
runtimes/control-m/
runtimes/activemq/
runtimes/oracle-db/
```

Do not mix dialect, platform, and runtime rules together. COBOL-IT rules belong in `dialects/cobol-it`, Linux rules belong in `platforms/linux`, and middleware rules belong in `runtimes/`.

## Intended Use

Cobol Compass can be used with AI coding assistants such as ChatGPT, Codex, Claude Code, GitHub Copilot, or any tool that supports project instructions and Markdown-based knowledge.

Typical use cases:

- Explain existing COBOL programs.
- Review a proposed code change.
- Suggest a minimal fix.
- Analyze production logs.
- Create test plans.
- Prepare JIRA tickets.
- Prepare technical emails.
- Identify dialect and platform risks.

## Non-Goals

Cobol Compass is not intended to autonomously rewrite large COBOL systems.

It should not be used to deploy generated code without human review, compilation, testing, and standard change-control approval.

## Repository Layout

```text
docs/                    Product, architecture, and terminology
core/                    General COBOL engineering and AI safety guidance
dialects/                Dialect-specific rules and risks
platforms/               Operating platform profiles
runtimes/                Runtime and integration profiles
profiles/                Active profile selection files
prompts/                 Reusable AI prompt templates
tool-configs/            Assistant-specific instruction files
examples/                End-to-end examples
```

## Version 0.1 Scope

Cobol Compass v0.1 focuses on one complete, useful profile:

- Core principles
- COBOL-IT dialect profile
- Linux platform profile
- Runtime profiles for Tuxedo, Control-M, ActiveMQ, and Oracle DB
- Prompt templates
- Review checklist
- Practical examples
