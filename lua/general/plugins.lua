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

    -- ZenMode
    {
      "folke/zen-mode.nvim",
      config = function()
        require("plugins.zenmode").config()
      end,
      event = "BufRead",
    },

    -- Markdown Preview
    { 'iamcco/markdown-preview.nvim',
      run = "cd app && npm install" },

    -- NVim Cheat
    { 'RishabhRD/popfix' },
    { 'RishabhRD/nvim-cheat.sh' },

    -- Symbols Outline
    { 'simrat39/symbols-outline.nvim' },

    {
      "folke/twilight.nvim",
      config = function()
        require("plugins.twilight").config()
      end
    }

  }
end
return H
