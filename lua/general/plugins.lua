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

    -- Twilight
    {
      "folke/twilight.nvim",
      config = function()
        require("plugins.twilight").config()
      end
    },

    -- Colorizer
    { 'norcalli/nvim-colorizer.lua' },

    -- neoclip
    {
      "AckslD/nvim-neoclip.lua",
      requires = {
        { 'kkharji/sqlite.lua', module = 'sqlite' },
        { 'nvim-telescope/telescope.nvim' },
      },
      config = function()
        require("plugins.neoclip").config()
      end,
    },
    -- Jupyter notebooks
    { 'jupyter-vim/jupyter-vim' },

    -- Flutter
    {
      "akinsho/flutter-tools.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("plugins.flutter_tools").config()
      end,
      ft = "dart",
    },

    -- Smooth Scrolling
    {
      'declancm/cinnamon.nvim',
      config = function() require('cinnamon').setup({
          default_keymaps = true, -- Create default keymaps.
          extra_keymaps = false, -- Create extra keymaps.
          extended_keymaps = true, -- Create extended keymaps.
          override_keymaps = true, -- The plugin keymaps will override any existing keymaps.
          always_scroll = true, -- Scroll the cursor even when the window hasn't scrolled.
          centered = true, -- Keep cursor centered in window when using window scrolling.
          hide_cursor = true, -- Hide the cursor while scrolling. Requires enabling termguicolors!
        })
      end
    },

    -- Navigate Between Search Matches
    {
      "kevinhwang91/nvim-hlslens",
      config = function()
        require("plugins.hlslens").config()
      end,
      event = "BufReadPost",
    },

    -- CSV
    {
      "chrisbra/csv.vim",
      ft = { "csv" },
    },

    -- Vim LSP Progress
    {
      "j-hui/fidget.nvim",
      config = function()
        require("plugins.fidget").config()
      end,
    },

    -- LateX
    { "lervag/vimtex" },
    { "kdheepak/cmp-latex-symbols" },

    -- Fancy Display For Vim Messages/CMD
    {
      "folke/noice.nvim",
      config = function()
        require("plugins.noice").config()
      end,
      requires = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
      },
    },

    -- Structural search and replace
    {
      "cshuaimin/ssr.nvim",
      config = function()
        require("ssr").setup {
          min_width = 50,
          min_height = 5,
          keymaps = {
            close = "q",
            next_match = "n",
            prev_match = "N",
            replace_all = "<leader><cr>",
          },
        }
      end,
      event = { "BufReadPost", "BufNew" },
    },

  }
end
return H
