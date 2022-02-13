if cutscenes then
    local allowCountdown = false
    function onStartCountdown()
	    if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		    startVideo('tooslowcutscene2');
		    allowCountdown = true;
		    return 'Function_Stop';
	    end
	    return 'Function_Continue';
    end
end

function onCreate()
    precacheImage('jumpscare/hitStatic'); -- so it doesn't freeze
	precacheXml('jumpscare/hitStatic'); -- so it doesn't freeze
	precacheSound('hitStatic1'); -- so it doesn't freeze
    precacheImage('daSTAT'); -- so it doesn't freeze
    precacheImage('GreenHill'); -- so it doesn't freeze

    print('you-cant-run/script.lua: Precached shit!!!!!')
end

local xx = 500;
local yy = 470;
local xx2 = 925;
local yy2 = 535;
local ofs = 30;
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

    [527] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);
    
    if Popups then
        addLuaSprite('daSTAT', true);

        print('you-cant-run/script.lua: DA STAT!!!!')
    end
    
    setObjectCamera('daSTAT', 'camHUD')

    end,

    [528] = function() --528
	makeLuaSprite('GreenHill', 'GreenHill', -275, -275)
	setScrollFactor('GreenHill', 0.9, 0.9)
	scaleObject('GreenHill', 8.0, 8.0);
    setProperty('GreenHill.antialiasing', false)
	addLuaSprite('GreenHill', false)

    print('you-cant-run/script.lua: GREEN HILL!')
    
    end,

    [530] = function()
    removeLuaSprite('daSTAT', true);

    end,

    [783] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);
        
    if Popups then
        addLuaSprite('daSTAT', true);

        print('you-cant-run/script.lua: DA STAT!!!!')
    end
        
    setObjectCamera('daSTAT', 'camHUD')
    
    end,

    [784] = function()
    removeLuaSprite('GreenHill', true);

    end,

    [786] = function()
    removeLuaSprite('daSTAT', true);
    
    end
}