local game={}

local function prints(t,x,y)
    local scale=1/5
    lg.print(t,x,y,0,scale,scale)
end

local function shadow(t,x,y)
    lg.setColor(0,0,0,1)
    lg.print(t,x+1,y+1)
    lg.setColor(1,1,1,1)
    lg.print(t,x,y)
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

    enemy=require("enemy")
    enemy:init()

    fade={f=1}

    frozen=true

    timer.tween(0.5,fade,{f=0})
    timer.after(0.8,function()
        frozen=false
    end)

    part=require("lib/particles")
    part.clear()
end

function game:update(dt)
    timer.update(dt)
    shader.stripe:send("time",love.timer.getTime())
    

    if not frozen then
        pl:update(dt)
        enemy:update(dt)
        map:update(dt)
    end

    if input:pressed("pause") then
        if frozen then
            frozen=false
        else
            frozen=true
        end
    end
    
end

function game:draw()

    --[[stripeColors("#68386c","#181425")
    lg.setShader(shader.stripe)
        lg.setColor(color("#ffffff"))
        lg.rectangle("fill",0,0,love.graphics.getWidth(),love.graphics.getHeight())
    lg.setShader()]]

    shove.beginDraw()

        lg.setColor(color("#4141ff"))
        lg.rectangle("fill",0,0,config.gameWidth,config.gameHeight)

        --[[stripeColors("#b55088","#68386c")
        lg.setShader(shader.stripe)
            lg.setColor(color("#181425"))
            lg.rectangle("fill",map.width*map.tilewidth,0,128,config.gameHeight)
        lg.setShader()]]


        lg.setColor(1,1,1,1)

        for _, layer in ipairs(map.layers) do
            if layer.visible and layer.opacity > 0 then
              map:drawLayer(layer)
            end
        end

        --lg.circle("fill",0,0,32) 

        enemy:draw()

        pl:draw()
        
        lg.setColor(color("#2800ba"))
        lg.rectangle("fill",0,0,love.graphics.getWidth(),10)
        shadow("SHIBAx"..pl.hp,1,1)

        --love.graphics.setBlendMode("multiply", "premultiplied")
            lg.setColor(0,0,0,fade.f)
            lg.rectangle("fill",0,0,love.graphics.getWidth(),love.graphics.getHeight())
	    --love.graphics.setBlendMode("alpha","alphamultiply")

    shove.endDraw()
    

end

return game