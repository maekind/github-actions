# Publish to PyPI

This action publishes a Python package distribution to PyPI.

## Outputs

None.

## Permissions

Ensure that your workflow has id-token: write permissions to authenticate with PyPI, and set up secrets for your PyPI API token.

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
        uses: maekind/github-actions/.github/actions/publish-to-pypi@main
