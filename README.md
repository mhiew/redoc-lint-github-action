# redoc-lint-github-action

This action allows you to lint your OpenAPI file. 

## Credits

This Github Action is a wrapper for [Redocly's Open API CLI](https://github.com/Redocly/openapi-cli)
[openapi-cli lint](https://redoc.ly/docs/cli/commands/#lint) command.

## Inputs
`args`

The entrypoint and other arguments to be provided to the openapi lint command.
This is relative to your github workspace.

## Example Usage
```yaml
jobs:
  test_job:
    runs-on: ubuntu-latest
    name: Test
    steps:
      - name: Checkout
        uses: actions/checkout@v2

      # then use redoc-cli-github-action to generate your HTML bundle
      - name: openapi-lint 
        uses: mhiew/redoc-lint-github-action@v1
        with:
          args: 'test/petstore.yml'
```
