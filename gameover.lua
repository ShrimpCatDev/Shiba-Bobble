local over={}

function over:enter()
    love.audio.stop()
    timer.clear()
    fade={f=1}

    timer.tween(0.5,fade,{f=0})
    timer.after(3,function()
        timer.tween(0.5,fade,{f=1})
        timer.after(0.8,function()
            reset()
            gs.switch(state.game)
        end)
    end)
    shove.createLayer("gover")
end

function over:update(dt)
    timer.update(dt)
end

function over:draw()
    shove.beginDraw()
        shove.beginLayer("gover")
        lg.print("GAME OVER",config.gameWidth/2-(font:getWidth("GAME OVER")/2),config.gameHeight/2-(font:getHeight()/2))
        lg.setColor(0,0,0,fade.f)
        lg.rectangle("fill",0,0,love.graphics.getWidth(),love.graphics.getHeight())
        shove.endLayer()
    shove.endDraw()
end

return over