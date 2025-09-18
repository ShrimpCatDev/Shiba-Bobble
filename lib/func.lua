function outlineText(text,x,y,colorOutline,colorFill)
    lg.setColor(colorOutline[1],colorOutline[2],colorOutline[3])
    lg.print(text,x+1,y)
    lg.print(text,x-1,y)
    lg.print(text,x,y+1)
    lg.print(text,x,y-1)
    lg.setColor(colorFill[1],colorFill[2],colorFill[3])
    lg.print(text,x,y)
    lg.setColor(1,1,1)
end

function centerOutlineText(text,x,y)
    local w=font:getWidth(text)
    outlineText(text,x-(w/2)-camera.x,y-(font:getHeight()/2)-camera.y,1,2)
end
