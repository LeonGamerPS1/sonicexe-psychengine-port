function onCreate()
   precacheImage('Too Slow Cutscene'); -- so it doesn't freeze
end

stepHitFuncs = { --a bunch of timed events, timed to steps

    [1] = function()
    makeAnimatedLuaSprite('sonicc', 'Too Slow Cutscene', 0, 0); --x and y
    setScrollFactor('sonicc', 0, 0);
    addAnimationByPrefix('sonicc', 'scare', 'Cutscene', 10, false);
    objectPlayAnimation('sonicc', 'scare', false);

    scaleObject('sonicc', 2.8, 2.8);

    if Cutscenes then
        addLuaSprite('sonicc', true);
    end

    setObjectCamera('sonicc', 'camHUD')

    end
  
}



function onStepHit()
    if stepHitFuncs[curStep] then 
        stepHitFuncs[curStep]() -- Executes function at curStep in stepHitFuncs
    end

end