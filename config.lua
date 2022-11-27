-- general
lvim.log.level = "warn"
lvim.format_on_save.enabled = true

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true

-- Theme
-- =========================================
require("general.appearance").config()

-- Keybindings
-- =========================================
require("general.mappings").config()

--  Formatters Setup
-- =========================================
require("general.formatters").config()

-- Linters Setup
-- =========================================
require("general.linters").config()

-- LSPs Setup
-- =========================================
require("general.lsp").config()

-- Plugins Setup
-- =========================================
require("general.plugins").config()

-- Plugins Configuration
-- =========================================
require("plugins.all").config()
