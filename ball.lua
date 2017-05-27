Ball = Core.class(Bitmap)

function Ball:init()
  self:setScale(0.2,0.2,1)
  
  self.x_direction = 1
  self.y_direction = 1
  self.x_speed = 4
  self.y_speed = 16
  
  stage:addEventListener(Event.ENTER_FRAME, self.onEnterFrame, self)
end

function Ball:onEnterFrame()
  local x = self:getX()
  local y = self:getY()
  
  if x < 0 or x > 320 - self:getWidth() then
    self.x_direction = -self.x_direction
  end
  
  if y < 0 or y > 480 - self:getHeight() then
    self.y_direction = -self.y_direction
  end
	
  x = x + self.x_direction * self.x_speed
  y = y + self.y_direction * self.y_speed
  
  self:setX(x) 
  self:setY(y)
end


return Ball