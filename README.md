<!-- Logo -->
<p align="center">
  <img src="logo.png">
</p>

# GitHub Actions Repository

This repository contains reusable GitHub Actions for automating various workflows, such as testing, building, releasing, and more. Each action is designed to be flexible and can be reused across multiple repositories to streamline CI/CD pipelines.

## Available Actions

- **create-release** - Create a release from the latest tag.
- **build-python-distribution** - Build Python distribution files, tar.gz and wheel.
- **publish-to-pypi** `- ⚠️ DEPRECATED ⚠️ -` Publish distribution files to PyPI.
- **publish-to-pypi-with-uv** - Publish a Python package distribution to PyPI using the `uv` utility.
- **github-release** - Create and sign GitHub release files.
- **python-testing-and-coverage** - Run testing and generate coverage report.
- **upload-codecov-coverage** - Upload coverage report to codecov.
- **create-tag** - Create Git tag.
- **bump-version** - Bump version in the input file.
