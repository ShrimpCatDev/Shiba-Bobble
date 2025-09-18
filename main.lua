require 'init'

function love.load()

    shove=require("lib/shove")
    shove.setResolution(config.gameWidth,config.gameHeight,{fitMethod = "aspect"})
    shove.setWindowMode(config.windowWidth,config.windowHeight,{resizable=true})
    shove.setScalingFilter("linear")
    lg.setDefaultFilter("linear","linear")

    love.window.setIcon(love.image.newImageData("assets/icon.png"))
    love.window.setTitle("My Game")

    gs=require("lib/hump/gamestate")

    state={
        splash=require("splash"),
        game=require("game")
    }

    gs.registerEvents()
    gs.switch(state.splash)

    
end

function love.update(dt)

end

function love.draw()

end

function love.keypressed(k)
    if k=="f11" then
        push:switchFullscreen(w, h)
    end
end