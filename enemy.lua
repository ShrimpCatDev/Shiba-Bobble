local e={
    data={
        ["runner"]={w=16,h=16}
    },
    kind={
        ["runner"]={}
    }
}

function e.filter(item,other)
    if other.properties then
        if other.properties.collidable then
            if other.properties.jump then
                if other.y>=item.y+item.h and item.vy>=0 then
                    return "slide"
                else
                    return nil
                end
            else
                return "slide"
            end
        end
    end
    return "cross"
end

function e:init()
    e.kind={
        ["runner"]={}
    }
    e.count=0
end

function e:addCol()
    for k,v in ipairs(self.kind["runner"]) do
        world:add(v,v.x,v.y,v.w,v.h)
    end
end

function e:update(dt)
    e.count=0
    for k,v in ipairs(self.kind["runner"]) do

        if v.jump then
            if math.random(0,120)==20 then
                v.dir=v.dir*-1
            end
            v.vx=80*v.dir
            if math.random(0,150)==20 then
                v.vy=-250
            end
        else
            v.vx=0
        end

        v.jump=false

        if v.vy<250 then
            v.vy=v.vy+grav*dt
        end

        local ax,ay,col,len=world:move(v,v.x+v.vx*dt,v.y+v.vy*dt,self.filter)
        v.x,v.y=ax,ay

        for i=1,len do
            if col[i].other.properties then
               if col[i].other.properties.collidable then
                    if col[i].normal.y==-1 then
                        v.vy=0
                        v.jump=true
                    end
                    if col[i].normal.y==1 and not col[i].other.properties.jump then
                        v.vy=0
                    end
                    if col[i].normal.y==0 and not col[i].other.properties.jump and v.jump then
                        v.dir=col[i].normal.x
                    end
                end
            end
            if col[i].other==pl then
                pl:damage()
            end
        end
        e.count=e.count+1
    end
end

function e:draw()
    for k,v in ipairs(self.kind["runner"]) do
        lg.setColor(1,0.5,0.5)
        lg.rectangle("fill",v.x,v.y,v.w,v.h)
    end

    lg.setColor(1,1,1,1)
end


function e:new(kin,x,y,dir)
    table.insert(self.kind[kin],{x=x,y=y,dir=dir,w=self.data[kin].w,h=self.data[kin].h,vx=0,vy=0,jump=false})
end

return e