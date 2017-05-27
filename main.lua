local fieldTexture = Texture.new("assets/field.png")
local background = Bitmap.new(fieldTexture)
stage:addChild(background)

local Ball = require "src/ball"
local ballTexture = Texture.new("assets/ball.png")
local ball = Ball.new(ballTexture)

stage:addChild(ball)