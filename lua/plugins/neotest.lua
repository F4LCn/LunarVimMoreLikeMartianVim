local M = {}

function M.setup()
  require("neotest").setup({
    adapters = {
      require("neotest-python")({
        dap = { justMyCode = false },
      }),
      require("neotest-dotnet"),
      require("neotest-zig"),
    },
  })
end

function M.get_plugin_config()
  return {
    {
      "nvim-neotest/neotest",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "antoinemadec/FixCursorHold.nvim",
        "nvim-treesitter/nvim-treesitter"
      },
      config = M.setup,
      lazy = "VeryLazy",
    },
    {
      "nvim-neotest/neotest-python",
      ft = { 'python' }
    },
    {
      "Issafalcon/neotest-dotnet",
      ft = { 'csharp' }
    },
    {
      "lawrence-laz/neotest-zig",
      ft = { 'zig' }
    },
  }
end

return M
