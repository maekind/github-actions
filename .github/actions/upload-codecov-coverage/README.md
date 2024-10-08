# Upload Codecov Coverage Report 📊

This action uploads a code coverage report (e.g., `coverage.xml`) to [Codecov](https://codecov.io/) for analysis and tracking.

## Inputs

- `codecov_token` (required): The Codecov token for authenticating the upload.
- `coverage_file` (required): The path to the coverage report file (e.g., `coverage.xml`) to be uploaded.

## Outputs

None.

## Permissions

No special permissions are required for this action.

## Example Usage

```yaml
jobs:
  upload-coverage:
    name: Upload Code Coverage
    runs-on: ubuntu-latest
    steps:
      - name: Upload Coverage to Codecov
        uses: maekind/github-actions/.github/actions/upload-codecov-coverage@main
        with:
          codecov_token: ${{ secrets.CODECOV_GH_KAIRO }}
          coverage_file: ./coverage.xml
