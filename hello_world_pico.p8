pico-8 cartridge // http://www.pico-8.com
version 16
__lua__

left,right,up,down,fire1,fire2=0,1,2,3,4,5
black,dark_blue,dark_purple,dark_green,brown,dark_gray,light_gray,white,red,orange,yellow,green,blue,indigo,pink,peach=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
xBounds = 127
yBounds = 127

function _init()
    txt = "hello world"
    x=0 
    y=20
end

function _update60()
    x = x + 1
    if x > xBounds then
        x = 0
    end
end

function _draw()
    cls(dark_blue)
    print(txt,x,y)
end
