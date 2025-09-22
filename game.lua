local game={}

local function prints(t,x,y)
    local scale=1/5
    lg.print(t,x,y,0,scale,scale)
end

function filter(item,other)
    if other.properties then
        if other.properties.collidable then
            if other.properties.jump then
                if other.y>=item.y+item.h and item.vy>=0 then
                    return "slide"
                else
                    return nil
                end
            elseif other.properties.kill then
                if item.kind=="enemy" then
                    return nil
                else
                    return "cross"
                end
            else
                return "slide"
            end
        end
    end
    return "cross"
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
    love.audio.stop()
    
    music.level:setLooping(true)
    music.level:play()
    
    shake=0

    count=0
    activated=false

    timer.clear()
    world=bump.newWorld()
    grav=480

    sti=require("lib/sti")
    map=sti("assets/map/lvl"..level..".lua",{"bump"})
    map:bump_init(world)

    pl=require("player")
    pl:init()

    enemy=require("enemy")
    enemy:init()

    item=require("item")
    item.init()

    fade={f=1}

    frozen=true

    timer.tween(0.5,fade,{f=0})
    timer.after(0.8,function()
        frozen=false
    end)

    part=require("lib/particles")
    part.clear()

    for x=0,map.width-1 do
        for y=0,map.height-1 do
            local data=map:getTileProperties("spawn",x+1,y+1)
            if data.spawner then
                if data.spawner=="player" then
                    pl.x,pl.y=x*16,y*16
                elseif data.spawner=="runner" then
                    enemy:new("runner",x*16,y*16,1)
                end
                map:setLayerTile("spawn",x+1,y+1,0)
            end
        end
    end
    enemy:addCol()
end

function game:update(dt)
    count=0
    part.update(dt)
    timer.update(dt)
    shader.stripe:send("time",love.timer.getTime())
    

    if not frozen then
        shake=shake-dt
        pl:update(dt)
        enemy:update(dt)
        item.update(dt)
        map:update(dt)

        if not activated and count<=0 then
            activated=true
            timer.script(function(wait)
                wait(5)
                timer.tween(0.5,fade,{f=1})
                wait(0.7)
                level=level+1
                gs.switch(state.swi)
            end)
        end
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

        shove.beginLayer("game")
        lg.push()
        if shake>0 then lg.translate(math.random(-1,1),math.random(-1,1)) end

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

        item.draw()

        pl:draw()

        part.draw()

        lg.translate(0,0)
        lg.pop()
        
        lg.setColor(color("#2800ba"))
        lg.rectangle("fill",0,0,love.graphics.getWidth(),10)
        shadow("SHIBAx"..lives,1,1)
        local txt="SCORE: "..score
        shadow(txt,config.gameWidth-font:getWidth(txt)-1,1)

        --love.graphics.setBlendMode("multiply", "premultiplied")
            lg.setColor(0,0,0,fade.f)
            lg.rectangle("fill",0,0,love.graphics.getWidth(),love.graphics.getHeight())
	    --love.graphics.setBlendMode("alpha","alphamultiply")

        lg.setColor(1,1,1,1)

        --lg.print(enemy.count,0,16)
        shove.endLayer()

        lg.print(count,0,16)

    shove.endDraw()
    

end

return game