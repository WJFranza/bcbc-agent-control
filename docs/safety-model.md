# Safety Model

## Rule 1: No arbitrary browser shell

The browser must not run arbitrary shell commands.

## Rule 2: Operator intent matters

Commands are shown clearly and copied by the operator. The operator decides where and when to run them.

## Rule 3: Destructive actions require separation

Destructive commands should not be one-click actions. They should be documented, labeled, and require manual review.

## Rule 4: Prefer read-only first

Status checks, logs, and diagnostics should be prioritized before restart, delete, wipe, or rebuild actions.

## Rule 5: Make demos explainable

The page should help another person understand what is happening.

A good demo command should show:

- What machine it runs on
- What it checks
- Expected output
- What a failure means
