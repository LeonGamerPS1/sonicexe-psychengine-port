function onCreate()
   precacheImage('three'); -- so it doesn't freeze
   precacheImage('two'); -- so it doesn't freeze
   precacheImage('one'); -- so it doesn't freeze
   precacheImage('gofun'); -- so it doesn't freeze

   print('endless/script.lua: Precached shit!!!!!')
end

local xx = 500;
local yy = 575;
local xx2 = 800;
local yy2 = 645;
local ofs = 45;
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

function onStepHit()
    if stepHitFuncs[curStep] then 
        stepHitFuncs[curStep]() -- Executes function at curStep in stepHitFuncs
    end

end

stepHitFuncs = { --a bunch of timed events, timed to steps (all code typed by junior - https://www.youtube.com/channel/UCJGR8x_g-cE1KsXKR_jZXAg)

    [888] = function() --888
    makeLuaSprite('three', 'FunInfiniteStage/three', 450, 200);
    setScrollFactor('three', 0, 0);
    scaleObject('three', 0.5, 0.5);

    if Popups then
        addLuaSprite('three', true);

        print('endless/script.lua: 3!')
    end

    setObjectCamera('three', 'camHUD')

    end,

    [892] = function() --890
    removeLuaSprite('three', true);
    
    makeLuaSprite('two', 'FunInfiniteStage/two', 450, 200);
    setScrollFactor('two', 0, 0);
    scaleObject('two', 0.5, 0.5);
    
    if Popups then
        addLuaSprite('two', true);

        print('endless/script.lua: 2!')
    end
    
    setObjectCamera('two', 'camHUD')
    
    end,
    
    [896] = function() --894
    removeLuaSprite('two', true);
    
    makeLuaSprite('one', 'FunInfiniteStage/one', 450, 200);
    setScrollFactor('one', 0, 0);
    scaleObject('one', 0.5, 0.5);
        
    if Popups then
        addLuaSprite('one', true);

        print('endless/script.lua: 1!')
    end

    setObjectCamera('one', 'camHUD')
        
    end,
        
    [900] = function() --899
    removeLuaSprite('one', true);
    
    makeLuaSprite('gofun', 'FunInfiniteStage/gofun', 450, 200);
    setScrollFactor('gofun', 0, 0);
    scaleObject('gofun', 0.5, 0.5);
    
    if Popups then
        addLuaSprite('gofun', true);

        print('endless/script.lua: Go!')
    end
    
    setObjectCamera('gofun', 'camHUD')

    end,
    
    [903] = function() --905
    removeLuaSprite('gofun', true);
    
    end
  
}