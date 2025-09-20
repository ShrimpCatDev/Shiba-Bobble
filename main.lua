require 'init'

function love.load()

    font=lg.newFont("assets/e.otf",8)
    lg.setFont(font)

    shove=require("lib/shove")
    shove.setResolution(config.gameWidth,config.gameHeight,{fitMethod = "aspect",renderMode="layer"})
    shove.setWindowMode(config.windowWidth,config.windowHeight,{resizable=true})
    shove.setScalingFilter("nearest")
    lg.setDefaultFilter("nearest","nearest")

    love.window.setIcon(love.image.newImageData("assets/icon.png"))
    love.window.setTitle("My Game")

    gs=require("lib/hump/gamestate")
    timer=require("lib/hump/timer")

    state={
        splash=require("splash"),
        game=require("game")
    }

    bump=require("lib/bump")
    moonshine=require("lib/moonshine")

    shader={
        stripe=lg.newShader("assets/shaders/stripe.glsl")
    }

    gs.registerEvents()
    gs.switch(state.splash)

    lives=3
    
end

function love.update(dt)
    input:update()
    --require("lib.lovebird").update()
end

function love.draw()

end

function love.keypressed(k)
    --[[if k=="f11" then
        if love.window.getFullscreen() then
            love.window.setFullscreen(false)
        else
            love.window.setFullscreen(true)
        end
    end]]
end