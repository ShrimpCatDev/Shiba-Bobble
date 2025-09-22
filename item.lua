local items={i={}}

function col(x1,y1,x2,y2,w1,h1,w2,h2)
    return x1<x2+w2 and x2<x1+w1 and y1<y2+h2 and y2<y1+h1 
end

items.img={
    lg.newImage("assets/item/cake.png")
}

function items.init()
    items.i={}
end

function items.update(dt)
    local toRemove={}
    for k,v in ipairs(items.i) do
        v.y=v.y+30*dt
        if col(v.x,v.y,pl.x,pl.y,16,16,16,16) then
            if v.kind=="cake" then
                score=score+100
            end
            table.insert(toRemove,k)
            local sound=sfx.die
            sound:stop()
            sound:setVolume(0.4)
            sound:play()
        end
        count=count+1
    end
    for k,v in ipairs(toRemove) do
        table.remove(items.i,v)
    end
end

function items.draw()
    for k,v in ipairs(items.i) do
        if v.kind=="cake" then
            lg.draw(items.img[1],v.x,v.y)
        end
    end
end

function items.new(kind,x,y)
    table.insert(items.i,{x=x,y=y,kind=kind,vy=0})
end

return items