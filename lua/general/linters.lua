local H = {}
H.config = function()
  -- -- set additional linters
  -- local linters = require "lvim.lsp.null-ls.linters"
  -- linters.setup {
  --   { command = "flake8", filetypes = { "python" } },
  --   {
  --     -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
  --     command = "shellcheck",
  --     ---@usage arguments to pass to the formatter
  --     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
  --     extra_args = { "--severity", "warning" },
  --   },
  --   {
  --     command = "codespell",
  --     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
  --     filetypes = { "javascript", "python" },
  --   },
  -- }

  -- Autocommands (https://neovim.io/doc/user/autocmd.html)
  -- vim.api.nvim_create_autocmd("BufEnter", {
  --   pattern = { "*.json", "*.jsonc" },
  --   -- enable wrap mode for json files only
  --   command = "setlocal wrap",
  -- })
  -- vim.api.nvim_create_autocmd("FileType", {
  --   pattern = "zsh",
  --   callback = function()
  --     -- let treesitter use bash highlight for zsh files as well
  --     require("nvim-treesitter.highlight").attach(0, "bash")
  --   end,
  -- })
end
return H
