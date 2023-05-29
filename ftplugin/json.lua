local json_opts = {
  settings = {
    json = {
      scemas = vim.list_extend({
        {
          description = "pyright config",
          fileMatch = { "pyrightconfig.json" },
          name = "pyrightconfig.json",
          url = "https://raw.githubusercontent.com/microsoft/pyright/master/packages/vscode-pyright/schemas/pyrightconfig.schema.json",
        },
      }, require("schemastore").json_schemas {}),
    },
  },
}
