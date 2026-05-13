# Architecture

Cobol Compass separates guidance into layers so rules can be composed without blending unrelated environments.

## Layers

1. `core/`: General COBOL engineering principles and AI safety rules.
2. `dialects/`: Syntax, compiler, runtime, and dialect-specific behavior.
3. `platforms/`: Operating system behavior, filesystem rules, environment, permissions, and process behavior.
4. `runtimes/`: Middleware, batch schedulers, messaging, databases, and operational integrations.
5. `overlays/`: Guidance for optional private overlays that stay outside the public repository.

## Active Profile Model

An active profile declares the selected dialect, platform, runtime stack, and optional private overlay policy.

Example:

```yaml
dialect:
  name: cobol-it
platform:
  os: linux
runtimes:
  transaction_manager:
    name: tuxedo
overlay:
  supported: true
```

## Design Rule

Core rules must stay reusable. If a rule only applies to COBOL-IT, put it under `dialects/cobol-it`. If a rule only applies to Linux, put it under `platforms/linux`. If it only applies to Tuxedo, Control-M, ActiveMQ, or Oracle DB, put it under the matching `runtimes/` profile.
