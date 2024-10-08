# Create Release

This action creates a new GitHub release when a tag is pushed.

## Inputs

- `tag_name` (required): The tag name to create the release from.

## Outputs

None.

## Permissions

Make sure the workflow has write access to the repository contents.

## Example Usage

```yaml
jobs:
  release:
    name: Create release
    runs-on: ubuntu-latest
    permissions:
      contents: write  # Required for creating a release
    steps:
      - name: Create Release
        uses: maekind/github-actions/.github/actions/create-release@main
        with:
          tag_name: ${{ github.ref }}
