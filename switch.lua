local sw={}

function sw:enter()
    if level>maxLvl then
        gs.switch(state.ending)
    else
        gs.switch(state.game)
    end
    
end

return sw