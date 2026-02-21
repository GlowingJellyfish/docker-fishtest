# Contributing

Thanks for your interest in contributing to this repository.

## Getting Started

1. Fork the repository and create your branch from `main`.
2. Make focused changes with clear commit history.
3. Run local checks before opening a pull request.
4. Open a PR with a clear summary and testing notes.

## Commit Message Convention

This project uses Conventional Commits and enforces commit formats in CI.

Use one of:

- `fix: ...` for patch-level changes
- `feat: ...` for minor features
- `feat!: ...` for breaking changes (major)

Examples:

- `fix: correct typo`
- `feat: add login system`
- `feat!: change API structure`

## Local Validation

Before submitting, validate configuration and docs changes as applicable.
For this repository, a minimal check is:

```bash
ruby -e "require 'yaml'; YAML.load_file('.github/dependabot.yml'); puts 'dependabot config ok'"
```

## Pull Request Checklist

- [ ] Changes are scoped and documented
- [ ] Commit messages follow Conventional Commits
- [ ] Local checks have been run
- [ ] Security-sensitive changes are highlighted in PR description

## Reporting Security Issues

Please do **not** report vulnerabilities in public issues.
See [SECURITY.md](SECURITY.md) for the private disclosure process.

## Code of Conduct

By participating, you agree to abide by our [Code of Conduct](CODE_OF_CONDUCT.md).
