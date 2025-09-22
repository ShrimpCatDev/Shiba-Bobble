local e={
    data={
        ["runner"]={w=16,h=16,hp=4}
        ["fly"]={w=16,h=16,hp=3}
    },
    kind={
        ["runner"]={}
        ["fly"]={}
    }
}

local function initImg(name,frm,int)
    e.data[name].img=lg.newImage("assets/enemy/"..name..".png")
    e.data[name].dimg=lg.newImage("assets/enemy/"..name.."Dead.png")
    local g=anim8.newGrid(16,16,e.data[name].img:getWidth(),e.data[name].img:getHeight())
    e.data[name].anim=anim8.newAnimation(g(frm,1),int)
end

initImg("runner","1-4",0.15)

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
        ["runner"]={},
        ["fly"]={}
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
    e.data["runner"].anim:update(dt)
    e.count=0

    local toRemove={}
    for k,v in ipairs(self.kind["runner"]) do
        if not v.dead then
            if v.jump and v.hp>0 then
                if v.mul>1 and math.random(0,30)==30 then
                    part.new(
                        v.x,v.y,0,-40,0,0,0.5,
                        function(x,y,lt)
                            lg.setColor(0,0,0,1)
                            lg.circle("fill",x,y,lt*10+1)
                            lg.setColor(1,0.5,0.5,1)
                            lg.circle("fill",x,y,lt*10)
                        end
                    )
                end
                if math.random(0,120)==20 then
                    v.dir=v.dir*-1
                end
                v.vx=80*v.dir
                if math.random(0,150)==20 then
                    v.vy=-250
                    local sound=sfx.jump
                    sound:stop()
                    sound:setVolume(0.4)
                    sound:play()
                end
            else
                v.vx=0
            end

            if v.hp<=0 then
                v.dt=v.dt-dt
                if not v.dead and v.dt<0 then
                    v.mul=1.5
                    v.hp=self.data["runner"].hp*2
                end
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
                        score=score+100
                        v.dead=true
                        v.dx=1
                        v.dy=-1
                        for i=0,8 do
                            part.new(
                                v.x,v.y,math.random(-60,60),math.random(-60,60),0,200,0.5,
                                function(x,y,lt)
                                    lg.setColor(0,0,0,1)
                                    lg.circle("fill",x,y,lt*10+1)
                                    lg.setColor(1,1,1,1)
                                    lg.circle("fill",x,y,lt*10)
                                end
                            )
                         end
                         local sound=sfx.die
                         sound:stop()
                         sound:play()
                    end
                end
            end
            count=count+1
        else
            v.bt=v.bt-dt
            --v.vy=v.dy*150
            --v.vx=v.dx*150
            local ax,ay,col,len=world:move(v,v.x+v.dx*150*dt,v.y+v.dy*150*dt,filter)
            v.x,v.y=ax,ay
            for i=1,len do
                if col[i].type=="slide" then
                    if col[i].normal.y~=0 then 
                        v.dy=col[i].normal.y 
                        for i=0,8 do
                            part.new(
                                v.x,v.y,math.random(-60,60),math.random(-60,60),0,200,0.5,
                                function(x,y,lt)
                                    lg.setColor(0,0,0,1)
                                    lg.circle("fill",x,y,lt*10+1)
                                    lg.setColor(1,1,1,1)
                                    lg.circle("fill",x,y,lt*10)
                                end
                            )
                         end
                    end
                    if col[i].normal.x~=0 then 
                        v.dx=col[i].normal.x 
                        for i=0,8 do
                            part.new(
                                v.x,v.y,math.random(-60,60),math.random(-60,60),0,200,0.5,
                                function(x,y,lt)
                                    lg.setColor(0,0,0,1)
                                    lg.circle("fill",x,y,lt*10+1)
                                    lg.setColor(1,1,1,1)
                                    lg.circle("fill",x,y,lt*10)
                                end
                            )
                        end
                    end
                    local sound=sfx.boom
                    sound:stop()
                    sound:setVolume(0.4)
                    sound:play()
                    shake=0.3
                end
                if col[i].other.kind and col[i].other.kind=="enemy" then
                    if not col[i].other.dead then
                        col[i].other.hp=0
                        col[i].other.dt=3
                    end
                end
                if v.bt<0 then
                    table.insert(toRemove,k)
                    part.new(
                        v.x,v.y,math.random(-60,60),math.random(-60,60),0,200,0.5,
                            function(x,y,lt)
                                lg.setColor(0,0,0,1)
                                lg.circle("fill",x,y,lt*12+1)
                                lg.setColor(1,1,1,1)
                                lg.circle("fill",x,y,lt*12)
                            end
                    )
                end
            end
            if v.y<=0 then
                v.dy=1
            end
            
            count=count+1
        end
    end

    for k,v in ipairs(toRemove) do
        table.remove(self.kind["runner"],v)
    end
end

local function drawEnemy(name)
    for k,v in ipairs(e.kind[name]) do
    if v.hp>0 then
        if v.mul==1 then
            lg.setColor(1,1,1,1)
        else
            lg.setColor(1,.7,.7,1)
        end
        if v.dir==1 then
            e.data[name].anim:draw(e.data[name].img,v.x,v.y,0,1,1)
        else
            e.data[name].anim:draw(e.data[name].img,v.x+16,v.y,0,-1,1)
        end
    else
        lg.draw(e.data[name].dimg,v.x+8,v.y+8,(3-v.bt)*10,1,1,8,8)
    end
    end
end

function e:draw()
    drawEnemy("runner")
    lg.setColor(1,1,1,1)
end


function e:new(kin,x,y,dir)
    table.insert(self.kind[kin],{x=x,y=y,dir=dir,w=self.data[kin].w,h=self.data[kin].h,vx=0,vy=0,dt=0,bt=3,jump=false,kind="enemy",dx=0,dy=0,hp=self.data[kin].hp,mul=1,dead=false})
end

return e