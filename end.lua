local ending={
    music=love.audio.newSource("assets/music/TalkingCuteChiptune.mp3","static"),
    credits={
        "THE END...?",
        "OF THE DEMO I GUESS?",
        " ",
        "SORRY... I WOULD HAVE MADE",
        "MORE LEVELS AND CONTENT",
        "BUT I JUST DIDNT HAVE THE TIME!",
        "PLEASE LET ME KNOW IF YOU WOULD",
        "LIKE TO SEE MORE LEVELS!",
        " ",
        "-CREDITS-",
        "MUSIC:",
        "Beach Time by Poltergasm",
        "Alex McCulloch",
        "SFX: OpenGameArt.org",
        "FONT: DaFont",
        "ART: ME :P",
        "MADE IN LOVE2D NOT GODOT HAHA",
        " ",
        "THANKS FOR PLAYING!",
        "GOD BLESS!",
        ""
    }
}

function ending:enter()
    love.audio.stop()
    self.music:setLooping(true)
    self.music:play()
    scroll=config.gameWidth+1
    shove.createLayer("credit")
    table.insert(ending.credits,"YOUR SCORE: "..score)
    table.insert(ending.credits,"PRESS A TO CONTINUE")
end

function ending:update(dt)
    if scroll>30-8 then
        scroll=scroll-20*dt
    end
    if input:pressed("jump") then
        reset()
        gs.switch(state.swi)
    end
end

function ending:draw()
    shove.beginDraw()
        shove.beginLayer("credit")
            for k,v in ipairs(ending.credits) do
                lg.print(v,config.gameWidth/2-(font:getWidth(v)/2),scroll+((k-1)*font:getHeight()))
            end
        shove.endLayer()
    shove.endDraw()
end

return ending