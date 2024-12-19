# Publish to PyPI with uv

This action publishes a Python package distribution to PyPI using the `uv` utility.

## Outputs

None.

## Permissions

Ensure that your workflow has id-token: write permissions to authenticate with PyPI, and set up secrets for your PyPI API token.

## Pypi configuration

Ensure that the github repository is properly configured as a valid publisher on PyPI. This way, github repository will be a trusted publisher, so you don't need to provide your PyPI username and password or API token.

## Example Usage

```yaml
jobs:
  publish-to-pypi:
    name: Publish to PyPI
    runs-on: ubuntu-latest
    permissions:
      id-token: write  # Required for authentication with PyPI
    steps:
      - name: Publish to PyPI
        uses: maekind/github-actions/.github/actions/publish-to-pypi-with-uv@main
```
