local H = {}
H.config = function()
  -- Telescope config
  require("plugins.telescope").config()

  -- Telescope config
  require("plugins.dashboard").config()

  -- Symbole outline
  require("plugins.symbols-outline").config()

  -- Colorizer
  require("colorizer").setup()

  -- Lualine
  require("plugins.lualine").config()

  -- VimTex
  require("plugins.vimtex").config()

end
return H
