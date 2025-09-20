local e={
    data={
        ["runner"]={w=16,h=16,hp=4}
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


local dspd=150
function e:update(dt)
    e.count=0
    for k,v in ipairs(self.kind["runner"]) do
        if not v.dead then
            if v.jump and v.hp>0 then
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

            local ax,ay,col,len=world:move(v,v.x+v.vx*v.mul*dt,v.y+v.vy*dt,filter)
            v.x,v.y=ax,ay

            for i=1,len do
                if col[i].other.properties then
                if col[i].other.properties.collidable then
                        if col[i].normal.y==-1 and not col[i].other.properties.kill then
                            v.vy=0
                            v.jump=true
                        end
                        if col[i].normal.y==1 and not col[i].other.properties.jump and not col[i].other.properties.kill then
                            v.vy=0
                        end
                        if col[i].normal.y==0 and not col[i].other.properties.jump and v.jump and not col[i].other.properties.kill then
                            v.dir=col[i].normal.x
                        end
                    end
                end
                if col[i].other==pl then
                    if v.hp>0 then
                        pl:damage()
                    elseif not v.dead then
                        v.dead=true
                        v.dx=1
                        v.dy=-1
                    end
                end
            end
            count=count+1
        else
            v.vy=v.dy*150
            v.vx=v.dx*150
            local ax,ay,col,len=world:move(v,v.x+v.vx*dt,v.y+v.vy*dt,filter)
            v.x,v.y=ax,ay
            for i=1,len do
                if col[i].type=="slide" then
                    v.dx=col[i].normal.x
                    v.dy=col[i].normal.y
                end
            end
            if v.y<=0 then
                v.dy=1
            end
            --count=count+1
        end
    end
end

function e:draw()
    for k,v in ipairs(self.kind["runner"]) do
        lg.setColor(1,0.5,0.5)
        lg.rectangle("fill",v.x,v.y,v.w,v.h)
        lg.setColor(0,1,1,1)
        lg.print(v.vy,v.x,v.y-8)
    end

    lg.setColor(1,1,1,1)
end


function e:new(kin,x,y,dir)
    table.insert(self.kind[kin],{x=x,y=y,dir=dir,w=self.data[kin].w,h=self.data[kin].h,vx=0,vy=0,jump=false,kind="enemy",dx=0,dy=0,hp=self.data[kin].hp,mul=1,dead=false})
end

return e