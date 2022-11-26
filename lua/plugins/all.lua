local H = {}
H.config = function()
  -- Telescope config
  require("plugins.telescope").config()

  -- Telescope config
  require("plugins.dashboard").config()


end
return H
