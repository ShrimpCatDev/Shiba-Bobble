local game={}

function game:enter()

end

function game:update()

end

function game:draw()
    lg.setColor(color("#4D4D4D"))
    lg.rectangle("fill",0,0,love.graphics.getWidth(),love.graphics.getHeight())
end

return game