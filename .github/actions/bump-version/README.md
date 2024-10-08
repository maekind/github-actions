# Bump Version Action 🔼

This action bumps the version in the input file, defaulting to incrementing the minor version. If the minor version reaches 999, it resets to 0 and increments the major version.

## Inputs

- `file` (required): The path to the version file to be modified.

The file should contain the string in the format `version = "1.2.0"`

## Outputs

- `new_version`: The new version after the bump.

## Permissions

This action requires **write** permissions for the repository contents to modify the input file.

## Example Usage

```yaml
jobs:
  bump-version:
    name: Bump Version
    runs-on: ubuntu-latest
    outputs:
      new_version: ${{ steps.bump-version-step.outputs.new_version }}
    permissions:
      contents: write  # Required to modify the input file
    steps:
      - name: Bump Version
        id: bump-version-step
        uses: maekind/github-actions/.github/actions/bump-version@main
        with:
          file: pyproject.toml
          gh_token: ${{ secrets.GITHUB_TOKEN }}
