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

    if input:pressed("jump") and self.jump and not self.dead then
        pl.vy=-240
    end

    self.anim.current:update(dt)
end

function pl:damage()
    if not self.dead and not self.inv then
        self.vy=-150
        self.dead=true
        lives=lives-1
        self.vx=0
        timer.script(function(wait)
            wait(1)
            timer.tween(0.5,fade,{f=1})
            wait(0.7)
            gs.switch(state.game)
        end)
    end
end

function pl:draw()
    --lg.rectangle("fill",self.x,self.y,self.w,self.h)
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