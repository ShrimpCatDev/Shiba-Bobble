local game={}

local function prints(t,x,y)
    local scale=1/5
    lg.print(t,x,y,0,scale,scale)
end

local function stripeColors(hex1,hex2)
    shader.stripe:send("color1",color(hex1))
    shader.stripe:send("color2",color(hex2))
end

function game:enter()
    world=bump.newWorld()
    grav=480

    sti=require("lib/sti")
    map=sti("assets/map/test.lua",{"bump"})
    map:bump_init(world)

    pl=require("player")
    pl:init()
end

function game:update(dt)
    shader.stripe:send("time",love.timer.getTime())
    pl:update(dt)
end

function game:draw()

    stripeColors("#68386c","#181425")
    lg.setShader(shader.stripe)
        lg.setColor(color("#ffffff"))
        lg.rectangle("fill",0,0,love.graphics.getWidth(),love.graphics.getHeight())
    lg.setShader()

    shove.beginDraw()

        lg.setColor(color("#0099db"))
        lg.rectangle("fill",0,0,config.gameWidth,config.gameHeight)

        stripeColors("#b55088","#68386c")
        lg.setShader(shader.stripe)
            lg.setColor(color("#181425"))
            lg.rectangle("fill",map.width*map.tilewidth,0,128,config.gameHeight)
        lg.setShader()

        lg.setColor(1,1,1,1)

        for _, layer in ipairs(map.layers) do
            if layer.visible and layer.opacity > 0 then
              map:drawLayer(layer)
            end
        end

        --lg.circle("fill",0,0,32) 

        pl:draw()

    shove.endDraw()
    

end

return game