require 'init'

function love.load()

    font=lg.newFont("assets/kawaii.ttf",12*5)
    lg.setFont(font)

    shove=require("lib/shove")
    shove.setResolution(config.gameWidth,config.gameHeight,{fitMethod = "aspect",renderMode="direct"})
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

    bump=require("lib/bump")

    shader={
        stripe=lg.newShader("assets/shaders/stripe.glsl")
    }

    gs.registerEvents()
    gs.switch(state.splash)

    
    
end

function love.update(dt)
    input:update()
end

function love.draw()

end

function love.keypressed(k)
    if k=="f11" then
        push:switchFullscreen(w, h)
    end
end