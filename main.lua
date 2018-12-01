require 'toggleblock'
require 'colortoggle'
require 'colors'

function love.load()

end

function love.update(dt)
  
  if colorToggleR.dragging.active and checkToggleBounds(colorToggleR, toggleBlockR) then
    colorToggleR.x = love.mouse.getX() - colorToggleR.dragging.diffX
  end
  if colorToggleG.dragging.active and checkToggleBounds(colorToggleG, toggleBlockG) then
    colorToggleG.x = love.mouse.getX() - colorToggleG.dragging.diffX
  end
  if colorToggleB.dragging.active and checkToggleBounds(colorToggleB, toggleBlockB) then
    colorToggleB.x = love.mouse.getX() - colorToggleB.dragging.diffX
  end

  setColors()
end

function love.gamepadpressed(joystick, button)
    lastbutton = button
end

function love.draw()

  love.graphics.setColor(1,1,1)
  love.graphics.print('Color values: '..colorR..', '..colorG..', '..colorB,140,300)

  love.graphics.setColor(colorR,colorG,colorB)
  love.graphics.rectangle('fill', 150, 75, 100, 100)

  love.graphics.setColor(1,1,1)
  love.graphics.rectangle('fill', colorToggleR.x, colorToggleR.y, colorToggleR.w, colorToggleR.h)
  love.graphics.rectangle('fill', colorToggleG.x, colorToggleG.y, colorToggleG.w, colorToggleG.h)
  love.graphics.rectangle('fill', colorToggleB.x, colorToggleB.y, colorToggleB.w, colorToggleB.h)

  love.graphics.print('Red', toggleBlockR.x - 50, toggleBlockR.y)
  love.graphics.print('Green', toggleBlockG.x - 50, toggleBlockG.y)
  love.graphics.print('Blue', toggleBlockB.x - 50, toggleBlockB.y)

  love.graphics.rectangle('line', toggleBlockR.x, toggleBlockR.y, toggleBlockR.w, toggleBlockR.h)
  love.graphics.rectangle('line', toggleBlockG.x, toggleBlockG.y, toggleBlockG.w, toggleBlockG.h)
  love.graphics.rectangle('line', toggleBlockB.x, toggleBlockB.y, toggleBlockB.w, toggleBlockB.h)

end

function love.keypressed(key)
  if key == 'escape' then
    love.event.push('quit')
  end
end

function love.mousepressed(x, y, button, isTouch)
  if button == 1
  and x > colorToggleR.x and x < colorToggleR.x + colorToggleR.w
  and colorToggleR.x >= toggleBlockR.x
  and colorToggleR.x + colorToggleR.w <= toggleBlockR.x + toggleBlockR.w
  and y > colorToggleR.y and y < colorToggleR.y + colorToggleR.h
  then
    colorToggleR.dragging.active = true
    colorToggleR.dragging.diffX = x - colorToggleR.x
  end

  if button == 1
  and x > colorToggleG.x and x < colorToggleG.x + colorToggleG.w
  and colorToggleG.x >= toggleBlockG.x
  and colorToggleG.x + colorToggleG.w <= toggleBlockG.x + toggleBlockG.w
  and y > colorToggleG.y and y < colorToggleG.y + colorToggleG.h
  then
    colorToggleG.dragging.active = true
    colorToggleG.dragging.diffX = x - colorToggleG.x
  end

  if button == 1
  and x > colorToggleB.x and x < colorToggleB.x + colorToggleB.w
  and colorToggleB.x >= toggleBlockB.x
  and colorToggleB.x + colorToggleB.w <= toggleBlockB.x + toggleBlockB.w
  and y > colorToggleB.y and y < colorToggleB.y + colorToggleB.h
  then
    colorToggleB.dragging.active = true
    colorToggleB.dragging.diffX = x - colorToggleB.x
  end
end

function love.mousereleased(x, y, button, isTouch)
  if button == 1 then colorToggleR.dragging.active = false end

  if button == 1 then colorToggleG.dragging.active = false end

  if button == 1 then colorToggleB.dragging.active = false end
end

function checkToggleBounds(a, b)
  return a.x >= b.x and a.x + a.w <= b.x + b.w
end
