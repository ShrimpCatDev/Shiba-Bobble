return {

    --screen utils
    gameWidth=1152/3,
    gameHeight=224,
    windowWidth=1152,
    windowHeight=224*3,
    fullscreen=false,
    resizable=true,
    pixelperfect=true,

    --texture
    filterMin="nearest",
    filterMax="nearest",

    --input
    input={
        controls={
            right={"key:right"},
            left={"key:left"},
            jump={"key:z"}
        },
        pairs={

        },
        joystick = love.joystick.getJoysticks()[1]
    }

}

