function onCreate()
    precacheImage('daSTAT'); -- so it doesn't freeze
    precacheImage('GreenHill'); -- so it doesn't freeze

   --debugPrint('Lua Precached shit!!!!!')
end

stepHitFuncs = { --a bunch of timed events, timed to steps (all code typed by junior - https://www.youtube.com/channel/UCJGR8x_g-cE1KsXKR_jZXAg)

    [527] = function() --528 is the original thing im just using a different number
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);
    
    if Popups then
        addLuaSprite('daSTAT', true);
    end
    
    setObjectCamera('daSTAT', 'camHUD')

    end,

    [528] = function() --528 is the original thing im just using a different number
	makeLuaSprite('GreenHill', 'GreenHill', -428.5 + 50 + 700, -449.35 + 25 + 392 + 105 + 50)
	setScrollFactor('GreenHill', 0.9, 0.9)
	scaleObject('GreenHill', 8.0, 8.0);

    if StageSwap then
	    addLuaSprite('GreenHill', false)
    end

    end,

    [530] = function()
    removeLuaSprite('daSTAT', true);

    end,

    [783] = function() --528 is the original thing im just using a different number
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);
        
    if Popups then
        addLuaSprite('daSTAT', true);
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

function onStepHit()
    if stepHitFuncs[curStep] then 
        stepHitFuncs[curStep]() -- Executes function at curStep in stepHitFuncs
    end

end