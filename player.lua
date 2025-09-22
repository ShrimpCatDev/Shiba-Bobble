local pl={}

function pl:init()
    self.x,self.y=16,0
    self.w,self.h=16,16
    self.vx,self.vy=0,0

    self.spd=120

    world:add(self,self.x,self.y,self.w,self.h)

    self.img=lg.newImage("assets/player/sheet.png")
    self.deadImg=lg.newImage("assets/player/dead.png")
    local g=anim8.newGrid(16,20,self.img:getWidth(),self.img:getHeight())
    self.anim={}
    self.anim.run=anim8.newAnimation(g("1-4",1),0.1)
    self.anim.idle=anim8.newAnimation(g("1-8",2),0.07)
    self.anim.current=self.anim.idle
    self.dir=1
    self.dead=false
    self.inv=false
    self.dTimer=0

    pl.bullets={}
    pl.bImg=lg.newImage("assets/player/ball.png")

    self.jumpSound=sfx.jump
end

local function newBullet(x,y,dir)
    table.insert(pl.bullets,{x=x,y=y,vx=0,vy=0,dir=dir,w=8,h=8,lt=1})
    world:add(pl.bullets[#pl.bullets],pl.bullets[#pl.bullets].x,pl.bullets[#pl.bullets].y,pl.bullets[#pl.bullets].w,pl.bullets[#pl.bullets].h)
end

function pl:update(dt)

    if self.vy<250 then
        self.vy=self.vy+grav*dt
    end

    if not self.dead then self.vx=0 end

    self.anim.current=self.anim.idle

    if input:down("right") and not self.dead then
        self.vx=self.spd
        self.dir=1
        self.anim.current=self.anim.run
    end
    if input:down("left") and not self.dead then
        self.vx=-self.spd
        self.dir=-1
        self.anim.current=self.anim.run
    end

    self.jump=false

    local ax,ay,col,len=world:move(self,self.x+self.vx*dt,self.y+self.vy*dt,filter)
    self.x,self.y=ax,ay

    for i=1,len do
        if col[i].other.properties then
            if col[i].other.properties.collidable then
                if col[i].normal.y==-1 and not col[i].other.properties.kill  then
                    self.vy=0
                    self.jump=true
                end
                if col[i].normal.y==1 and not col[i].other.properties.jump and not col[i].other.properties.kill then
                    self.vy=0
                end
                if col[i].other.properties.kill then
                    pl:damage()
                end
            end
        end
    end

    if input:pressed("jump") and pl.jump and not self.dead then
        self.vy=-240
        self.jumpSound:stop()
        self.jumpSound:play()
    end

    if input:pressed("shoot") and #self.bullets<2 and not pl.dead then
        newBullet(self.x+self.w/2-4,self.y+4,self.dir)
        local sound=sfx.shoot
        sound:stop()
        sound:play()
    end

    self.anim.current:update(dt)

    local toRemove={}
    for k,v in ipairs(self.bullets) do

        v.vx=v.dir*150
        v.vy=v.vy+grav*dt
        --v.x=v.x+v.vx*dt

        local ax,ay,col,len=world:move(v,v.x+v.vx*dt,v.y+v.vy*dt,filter)
        v.x,v.y=ax,ay

        for i=1,len do
            if col[i].other.properties then
               if col[i].other.properties.collidable then
                    if col[i].normal.y==-1 and not col[i].other.properties.kill then
                        v.vy=-100
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
            if col[i].other.kind=="enemy" and col[i].other.hp>0 then
                col[i].other.hp=col[i].other.hp-1
                if col[i].other.hp<=0 then
                    col[i].other.dt=3
                end
                table.insert(toRemove,k)
                
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
        end

        v.lt=v.lt-dt
        if v.lt<=0 then
            table.insert(toRemove,k)
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
    end
    for k,v in ipairs(toRemove) do
        world:remove(self.bullets[v])
        table.remove(self.bullets,v)
    end
end

function pl:damage()
    if not self.dead and not self.inv then
        local sound=sfx.die
        sound:play()
        self.vy=-150
        self.dead=true
        lives=lives-1
        self.vx=0
        timer.script(function(wait)
            wait(1)
            timer.tween(0.5,fade,{f=1})
            wait(0.7)
            if lives<1 then
                gs.switch(state.gameover)
            else
                gs.switch(state.swi)
            end
        end)
    end
end

function pl:draw()
    --lg.rectangle("fill",self.x,self.y,self.w,self.h)
    for k,v in ipairs(self.bullets) do
        lg.draw(self.bImg,v.x,v.y)
    end

    if not self.dead then
        if self.dir==1 then
            self.anim.current:draw(self.img,self.x,self.y-4,0,self.dir,1)
        else
            self.anim.current:draw(self.img,self.x+self.w,self.y-4,0,self.dir,1)
        end
    else
        if self.dir==1 then
            lg.draw(self.deadImg,self.x,self.y,0,self.dir,1)
        else
            lg.draw(self.deadImg,self.x+self.w,self.y,0,self.dir,1)
        end
    end

    
end

return pl