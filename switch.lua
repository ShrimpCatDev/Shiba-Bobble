local sw={}

function sw:enter()
    gs.switch(state.game)
end

return sw