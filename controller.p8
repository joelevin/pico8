pico-8 cartridge // http://www.pico-8.com
version 16
__lua__

left,right,up,down,fire1,fire2=0,1,2,3,4,5
black,dark_blue,dark_purple,dark_green,brown,dark_gray,light_gray,white,red,orange,yellow,green,blue,indigo,pink,peach=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
velocity = 1

function _init()
txt = {}
txt.value = "no button pressed"
txt.x = 0
txt.y = 0
txt.color = light_gray
bgColor = dark_blue
end

function _update60()
    if btn(left) then
        txt.value = "left"
        txt.x = txt.x - velocity
    end
    if btn(right) then
        txt.value = "right"
        txt.x = txt.x + velocity
    end
    if btn(up) then
        txt.value = "up"
        txt.y = txt.y - velocity
    end
    if btn(down) then
        txt.value = "down"
        txt.y = txt.y + velocity
    end
    if btn(fire1) then
        txt.value = "fire1"
        txt.color = generateColor()
    end
    if btn(fire2) then
        txt.value = "fire2"
        bgColor = generateColor()
    end
    if noButtonPressed() then
        txt.value = "no button pressed"
    end
end

function generateColor()
    return flr(rnd(16))
end

function noButtonPressed()
    return not (btn(left) or btn(right) or btn(up) or btn(down) or btn(fire1) or btn(fire2))
end

function _draw()
    cls(bgColor)
    print(txt.value, txt.x, txt.y, txt.color)
end