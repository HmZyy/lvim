local H = {}
H.config = function()
  lvim.colorscheme = "kanagawa"
  -- to disable icons and use a minimalist setup, uncomment the following
  -- lvim.use_icons = false
  lvim.builtin.alpha.active = true
  lvim.builtin.alpha.mode = "dashboard"
  lvim.builtin.terminal.active = true
  lvim.builtin.nvimtree.setup.view.side = "left"
  lvim.builtin.nvimtree.setup.renderer.icons.show.git = true

  vim.g.cheat_default_window_layout = "vertical_split"
end
return H
