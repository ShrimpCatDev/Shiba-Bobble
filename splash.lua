local splash={}

function splash:enter()
    self.img=lg.newImage("assets/logo.png")
    timer2=love.math.random(0.5,0.2)
end

function splash:update(dt)
    timer2=timer2-dt

    if timer2<=0 then
        gs.switch(state.game)
    end
end

function splash:draw()
    lg.setColor(color("#26292D"))
    lg.rectangle("fill",0,0,love.graphics.getWidth(),love.graphics.getHeight())
    lg.setColor(1,1,1,1)
    lg.draw(self.img,love.graphics.getWidth()/2,love.graphics.getHeight()/2,0,.3,.3,self.img:getWidth()/2,self.img:getHeight()/2)
end

return splash