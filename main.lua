

colors = {0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1}
colorR = 0
colorG = 0
colorB = 0

toggleBlockR = {
  x = 150,
  y = 200,
  w = 120,
  h = 20
}

toggleBlockG = {
  x = 150,
  y = 225,
  w = 120,
  h = 20
}

toggleBlockB = {
  x = 150,
  y = 250,
  w = 120,
  h = 20
}

colorToggleR = {
  x = toggleBlockR.x,
  y = toggleBlockR.y,
  w = 10,
  h = 20,
  dragging = {active = false, diffX = 0}
}

colorToggleG = {
  x = toggleBlockG.x,
  y = toggleBlockG.y,
  w = 10,
  h = 20,
  dragging = {active = false, diffX = 0}
}

colorToggleB = {
  x = toggleBlockB.x,
  y = toggleBlockB.y,
  w = 10,
  h = 20,
  dragging = {active = false, diffX = 0}
}

function love.load()

end

function love.update(dt)
  if dt > 0.035 then return end

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

function setColors()
  if colorToggleR.x > 150 and colorToggleR.x < 160 then
    colorR = colors[1]
  elseif colorToggleR.x > 160 and colorToggleR.x < 170 then
    colorR = colors[2]
  elseif colorToggleR.x > 170 and colorToggleR.x < 180 then
    colorR = colors[3]
  elseif colorToggleR.x > 180 and colorToggleR.x < 190 then
    colorR = colors[4]
  elseif colorToggleR.x > 190 and colorToggleR.x < 200 then
    colorR = colors[5]
  elseif colorToggleR.x > 200 and colorToggleR.x < 210 then
    colorR = colors[6]
  elseif colorToggleR.x > 210 and colorToggleR.x < 220 then
    colorR = colors[7]
  elseif colorToggleR.x > 220 and colorToggleR.x < 230 then
    colorR = colors[8]
  elseif colorToggleR.x > 230 and colorToggleR.x < 240 then
    colorR = colors[9]
  elseif colorToggleR.x > 240 and colorToggleR.x < 250 then
    colorR = colors[10]
  elseif colorToggleR.x > 250 then
    colorR = colors[11]
  end
  if colorToggleG.x > 150 and colorToggleG.x < 160 then
    colorG = colors[1]
  elseif colorToggleG.x > 160 and colorToggleG.x < 170 then
    colorG = colors[2]
  elseif colorToggleG.x > 170 and colorToggleG.x < 180 then
    colorG = colors[3]
  elseif colorToggleG.x > 180 and colorToggleG.x < 190 then
    colorG = colors[4]
  elseif colorToggleG.x > 190 and colorToggleG.x < 200 then
    colorG = colors[5]
  elseif colorToggleG.x > 200 and colorToggleG.x < 210 then
    colorG = colors[6]
  elseif colorToggleG.x > 210 and colorToggleG.x < 220 then
    colorG = colors[7]
  elseif colorToggleG.x > 220 and colorToggleG.x < 230 then
    colorG = colors[8]
  elseif colorToggleG.x > 230 and colorToggleG.x < 240 then
    colorG = colors[9]
  elseif colorToggleG.x > 240 and colorToggleG.x < 250 then
    colorG = colors[10]
  elseif colorToggleG.x > 250 then
    colorG = colors[11]
  end
  if colorToggleB.x > 150 and colorToggleB.x < 160 then
    colorB = colors[1]
  elseif colorToggleB.x > 160 and colorToggleB.x < 170 then
    colorB = colors[2]
  elseif colorToggleB.x > 170 and colorToggleB.x < 180 then
    colorB = colors[3]
  elseif colorToggleB.x > 180 and colorToggleB.x < 190 then
    colorB = colors[4]
  elseif colorToggleB.x > 190 and colorToggleB.x < 200 then
    colorB = colors[5]
  elseif colorToggleB.x > 200 and colorToggleB.x < 210 then
    colorB = colors[6]
  elseif colorToggleB.x > 210 and colorToggleB.x < 220 then
    colorB = colors[7]
  elseif colorToggleB.x > 220 and colorToggleB.x < 230 then
    colorB = colors[8]
  elseif colorToggleB.x > 230 and colorToggleB.x < 240 then
    colorB = colors[9]
  elseif colorToggleB.x > 240 and colorToggleB.x < 250 then
    colorB = colors[10]
  elseif colorToggleB.x > 250 then
    colorB = colors[11]
  end
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
