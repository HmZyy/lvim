local M = {}
M.config = function()
  local status_ok, zen_mode = pcall(require, "zen-mode")
  if not status_ok then
    return
  end


  zen_mode.setup {
    window = {
      backdrop = 1,
      height = 0.9, -- height of the Zen window
      width = 0.6,
      options = {
        signcolumn = "no", -- disable signcolumn
        number = false, -- disable number column
        relativenumber = false, -- disable relative numbers
      },
    },
    plugins = {
      gitsigns = { enabled = false }, -- disables git signs
      tmux = { enabled = not lvim.builtin.tmux_lualine },
      twilight = { enabled = true },
      kitty = {
        enabled = true,
        font = "+2", -- font size increment
      },
    },
    on_open = function()
      lvim.builtin.cmp.active = false
      vim.cmd [[
          set foldlevel=10
          IndentBlanklineDisable!
          ]]
    end,
    on_close = function()
      lvim.builtin.cmp.active = true
      vim.cmd [[
          set foldlevel=4
          set foldmethod=expr
          set foldexpr=nvim_treesitter#foldexpr()
          IndentBlanklineEnable!
          ]]
    end,
  }
end

return M
