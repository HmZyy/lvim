local H = {}
H.config = function()
  -- Additional Plugins
  -- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
  lvim.plugins = {
    -- Color Schemes
    { "morhetz/gruvbox" },
    { "rebelot/kanagawa.nvim" },

    -- Trouble
    {
      "folke/trouble.nvim",
      cmd = "TroubleToggle",
    },
    -- Goyo
    { "junegunn/goyo.vim" },

    -- Markdown Preview
    { 'iamcco/markdown-preview.nvim',
      run = "cd app && npm install" },
  }
end
return H
