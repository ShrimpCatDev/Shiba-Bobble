lg=love.graphics

local lgp=love.graphics.points

function lg.points(x,y)
    lgp(math.floor(x)+0.5,math.floor(y)+0.5)
end

config=require 'config'

lg.setDefaultFilter(config.filterMin,config.filterMax)

baton=require 'lib/baton'

input=baton.new(config.input)
color=require("lib/hex2color")

anim8=require("lib/anim8")