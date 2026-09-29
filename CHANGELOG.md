# Changelog

Document meaningful project releases here.

## Unreleased

### Added
- `Dockerfile` (python:3.13-slim, Uvicorn on port 8000) and `.dockerignore`; image built and run as `sdi4213-week56:0.1.0`.

## [0.1.0]

### Added
- Week 5–6 starter repository initialized (FastAPI inventory app, pytest suite, CI).
- Automated build package: CI zips `app/`, `requirements.txt`, `README.md`, and `VERSION` into `dist/sdi4213-app.zip` after tests pass.
- GitHub Actions artifact upload (`sdi4213-app`).
