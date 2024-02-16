# redoc-lint-github-action

This action allows you to lint your OpenAPI file. 

## Credits

This Github Action is a wrapper for [Redocly's Open API CLI](https://github.com/Redocly/openapi-cli)
[openapi-cli lint](https://redoc.ly/docs/cli/commands/#lint) command.

## Inputs
`args`

The entrypoint and other arguments to be provided to the openapi lint command.
This is relative to your github workspace.

If `args` is not specified it will default to `--help` to return a list of commands.

## Example Usage
```yaml
jobs:
  test_job:
    runs-on: ubuntu-latest
    name: Test
    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: openapi-lint 
        uses: mhiew/redoc-lint-github-action@v4
        with:
          args: 'test/petstore.yml'
```
