function omCreate()
   precacheImage('Too Slow Cutscene'); -- so it doesn't freeze
   precacheSound('tooslowcutscene1'); -- so it doesn't freeze
end

stepHitFuncs = { --a bunch of timed events, timed to steps

    [1] = function()
    makeAnimatedLuaSprite('sonicc', 'Too Slow Cutscene', 0, 0); --x and y
    setScrollFactor('sonicc', 0, 0);
    addAnimationByPrefix('sonicc', 'scare', 'Cutscene', 10, false);
    objectPlayAnimation('sonicc', 'scare', false);

    scaleObject('sonicc', 2.8, 2.8);
    playSound('tooslowcutscene1', 1);

    addLuaSprite('sonicc', true);

    setObjectCamera('sonicc', 'camHUD')

    end
  
}



function onStepHit()
    if stepHitFuncs[curStep] then 
        stepHitFuncs[curStep]() -- Executes function at curStep in stepHitFuncs
    end

end