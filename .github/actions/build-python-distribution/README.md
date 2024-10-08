# Build Distribution

This action builds Python package distributions (both a binary wheel and a source tarball) using `uv`.

## Inputs

- `python_version` (required): The Python version to use for building the distributions.

## Outputs

None.

## Permissions

No special permissions are required for this action.

## Example Usage

```yaml
jobs:
  build:
    name: Build distribution
    runs-on: ubuntu-latest
    permissions:
      contents: read  # Required to read the code for building the distribution
    steps:
      - name: Build Distribution
        uses: maekind/github-actions/.github/actions/build-python-distribution@main
        with:
          python_version: "3.12"
