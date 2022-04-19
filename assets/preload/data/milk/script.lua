function onCreate()
    precacheImage('SpingeBinge'); -- so it doesn't freeze
 
    print('milk/script.lua: Precached shit!!!!!')
end

function onStepHit()
    if stepHitFuncs[curStep] then 
        stepHitFuncs[curStep]() -- Executes function at curStep in stepHitFuncs
    end

end

stepHitFuncs = { --a bunch of timed events, timed to steps (all code typed by junior - https://www.youtube.com/channel/UCJGR8x_g-cE1KsXKR_jZXAg)

    [536] = function()
    makeLuaSprite('SpingeBinge', 'SpingeBinge', -235, 376);
    setScrollFactor('SpingeBinge', 0.9, 0.9);
    scaleObject('SpingeBinge', 1.2, 1.2);
    setProperty('SpingeBinge.antialiasing', false)

    addLuaSprite('SpingeBinge', true);

    print('milk/script.lua: sponge!')

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

    addLuaSprite('SpingeBinge', true);

    print('milk/script.lua: sponge!')

    setObjectCamera('three', 'camHUD')

    end,

    [2281] = function() --890
        removeLuaSprite('SpingeBinge', true);
    end

} 