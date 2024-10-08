# GitHub Release with Sigstore

This action signs the Python distribution packages using Sigstore and uploads them to the corresponding GitHub Release.

## Inputs

- `tag_name` (required): The tag name for the GitHub release.

## Outputs

None.

## Permissions

Ensure that the workflow has both contents: write and id-token: write permissions for this action to upload signatures and artifacts to the GitHub release.

## Example Usage

```yaml
jobs:
  github-release:
    name: Sign and Upload to GitHub Release
    runs-on: ubuntu-latest
    permissions:
      contents: write  # Required to upload artifacts to the release
      id-token: write  # Required for signing with Sigstore
    steps:
      - name: Sign and Upload to GitHub Release
        uses: maekind/github-actions/.github/actions/github-release@main
        with:
          tag_name: ${{ github.ref_name }}
