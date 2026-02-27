# docker-fishtest

## Worker

The worker uses an archlinux:latest base image and runs pacman updates in the background to
keep the software stack up to date.
This is useful to get the latest compilers and tools for running the worker.

```
cd worker
cp .env.example .env
```

Update the `.env` file with your credentials

To start a worker, run:

```
docker compose up -d
```

## Server (for development)

To start a dev server, run:

```
cd server
git clone https://github.com/glowingjellyfish/fishtest
docker compose up -d
```

Copy `.netrc.example` to `.netrc` and update the "login" token with your GitHub personal access token
to increase the rate limit.

## Publishing as GitHub Packages (GHCR)

This repo now includes a GitHub Actions workflow at `.github/workflows/publish-ghcr.yml` that builds and pushes container images to GitHub Container Registry:

- `ghcr.io/<owner>/docker-fishtest-worker`
- `ghcr.io/<owner>/docker-fishtest-server`

The workflow runs on:

- pushes to `main`
- tags like `v1.2.3`
- manual trigger (`workflow_dispatch`)

To use published images, authenticate first:

```bash
echo "$GITHUB_TOKEN" | docker login ghcr.io -u <github-username> --password-stdin
```
