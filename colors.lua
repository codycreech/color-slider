colors = {0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1}
colorR = 0
colorG = 0
colorB = 0

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
