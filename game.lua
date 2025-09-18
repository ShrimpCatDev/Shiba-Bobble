local game={}

function game:enter()
    sti=require("lib/sti")
    map=sti("assets/map/test.lua")

    x=0
end

function game:update(dt)
    x=x+8*dt
end

function game:draw()
    lg.setColor(color("#000000"))
    lg.rectangle("fill",0,0,love.graphics.getWidth(),love.graphics.getHeight())

    shove.beginDraw()

        lg.setColor(color("#4D4D4D"))
        lg.rectangle("fill",0,0,config.gameWidth,config.gameHeight)

        lg.setColor(1,1,1,1)

        for _, layer in ipairs(map.layers) do
            if layer.visible and layer.opacity > 0 then
              map:drawLayer(layer)
            end
        end

        --lg.circle("fill",0,0,32) 

    shove.endDraw()

end

return game