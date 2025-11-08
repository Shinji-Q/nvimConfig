return {
  cmd = { "pylsp" },
  filetypes = { "python" },
  settings = {
    configurationSources = { 'flake8' },
    pylsp = {
      plugins = {
        pycodestyle = {
          enabled = false,
        },
        flake8 = {
          enabled = true,
          ignore = { 'E501' },
        },
        mccabe = {
          threshold = 80,
        }
      },
    },
  },
}
