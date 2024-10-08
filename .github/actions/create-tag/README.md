# Create Git Tag Action 🎉

This action creates a Git tag for the repository, including commit messages, PR title, and description. It can also add emojis to the tag message.

## Inputs

- `tag_name` (required): The tag name to create (e.g., `v1.0.0`).
- `commits` (required): The commit messages to include in the tag description.
- `title` (required): The pull request title to include in the tag message.
- `description`: The pull request description/body to add to the tag.
- `emoji`: Emojis to add to the tag message (default: `"✨🚀"`).

## Outputs

None.

## Permissions

This action requires **write** permissions for the repository contents to create and push the tag.

## Example Usage

```yaml
jobs:
  create-tag:
    name: Create Git Tag
    runs-on: ubuntu-latest
    steps:
      - name: Create Tag
        uses: your-username/github-actions/.github/actions/create-tag-action@main
        with:
          tag_name: "v1.0.0"
          commits: ${{ github.event.pull_request.commits }}
          title: ${{ github.event.pull_request.title }}
          description: ${{ github.event.pull_request.body }}
          emoji: "🎉🔥"
