# Testing 🧪 and Coverage Report Generation 📝

This action runs tests, performs linting, and generates a code coverage report for a Python project.

## Inputs

- `python_version` (required): The version of Python to use for testing. Default is `3.12`.
- `coverage_path` (required): The path to the code for coverage reporting. Default is `./src`.

## Outputs

- `coverage-file`: The generated code coverage report file.

## Example Usage

You can use this action in your GitHub workflow as follows:

```yaml
jobs:
  kairo-test:
    name: Test and Generate Coverage for
    runs-on: ubuntu-latest
    strategy:
      matrix:
        python_version: 
          - "3.12"
          - "3.13"

    steps:
      - name: Run Testing and Coverage
        uses: maekind/github-actions/.github/actions/python-testing-and-coverage@main
        with:
          python_version: ${{ matrix.python-version }}
          coverage_path: ./src/project_name  # Specify the coverage path if needed
