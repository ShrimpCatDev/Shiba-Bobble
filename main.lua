require 'init'

function love.load()

    font=lg.newFont("assets/e.otf",8)
    lg.setFont(font)

    shove=require("lib/shove")
    shove.setResolution(config.gameWidth,config.gameHeight,{fitMethod = "aspect",renderMode="direct"})
    shove.setWindowMode(config.windowWidth,config.windowHeight,{resizable=true})
    shove.setScalingFilter("linear")
    lg.setDefaultFilter("nearest","nearest")

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
        if love.window.getFullscreen() then
            love.window.setFullscreen(false)
        else
            love.window.setFullscreen(true)
        end
    end
end