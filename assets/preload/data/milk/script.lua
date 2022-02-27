function onCreate()
    precacheImage('SpingeBinge'); -- so it doesn't freeze
 
    print('milk/script.lua: Precached shit!!!!!')
end

local xx = 250;
local yy = 475;
local xx2 = 650;
local yy2 = 445;
local ofs = 35;
local followchars = true;
local del = 0;
local del2 = 0;


function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'laugh' then
              triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end

stepHitFuncs = { --a bunch of timed events, timed to steps (all code typed by junior - https://www.youtube.com/channel/UCJGR8x_g-cE1KsXKR_jZXAg)

    [536] = function()
    makeLuaSprite('SpingeBinge', 'SpingeBinge', -235, 376);
    setScrollFactor('SpingeBinge', 0.9, 0.9);
    scaleObject('SpingeBinge', 1.2, 1.2);
    setProperty('SpingeBinge.antialiasing', false)

    if Popups then
        addLuaSprite('SpingeBinge', true);

        print('milk/script.lua: sponge!')
    end

    setObjectCamera('three', 'camHUD')

    end,

    [543] = function() --890
    removeLuaSprite('SpingeBinge', true);
    end,

    [2272] = function()
    makeLuaSprite('SpingeBinge', 'SpingeBinge', -235, 376);
    setScrollFactor('SpingeBinge', 0.9, 0.9);
    scaleObject('SpingeBinge', 1.2, 1.2);
    setProperty('SpingeBinge.antialiasing', false)
    
    if Popups then
        addLuaSprite('SpingeBinge', true);
    
        print('milk/script.lua: sponge!')
    end
    
    setObjectCamera('three', 'camHUD')
    
    end,

    [2281] = function() --890
        removeLuaSprite('SpingeBinge', true);
    end
    
}