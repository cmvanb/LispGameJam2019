local fennel = require("fennel")
-- dust.fnl ends in a line like this:
-- {:draw (fn [] ...) :update (fn [dt] ...)}
local dust = fennel.dofile("dust.fnl")

love.update = function(dt)
  dust.update(dt)
end

love.draw = function()
  dust.draw()
end

love.keypressed = function(key)
  if(key == "f5") then -- support reloading
    for k,v in pairs(fennel.dofile("dust.fnl")) do
      dust[k] = v
    end
  else
    -- TODO: shutdown key
  end
end
