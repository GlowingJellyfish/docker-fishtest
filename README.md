# docker-fishtest

## Server

To start a dev server, run:

```
cd server
git clone https://github.com/official-stockfish/fishtest
docker compose up -d
```

Copy `.netrc.example` to `.netrc` and update the "login" token with your GitHub personal access token
to increase the rate limit.

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
