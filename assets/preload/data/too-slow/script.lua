function omCreate()
   precacheImage('sonicJUMPSCARE'); -- so it doesn't freeze
   precacheSound('datOneSound'); -- so it doesn't freeze
   precacheSound('jumpscare'); -- so it doesn't freeze
end

stepHitFuncs = { --a bunch of timed events, timed to steps

    [1722] = function()
    makeAnimatedLuaSprite('sonic', 'sonicJUMPSCARE', 50, 0); --x and y
    setScrollFactor('sonic', 0, 0);
    addAnimationByPrefix('sonic', 'scare', 'sonicSPOOK0', 24, false);
    objectPlayAnimation('sonic', 'scare', false);

    scaleObject('sonic', 1, 1);
    playSound('datOneSound', 1);
    playSound('jumpscare', 0.3);

    addLuaSprite('sonic', true);

    setObjectCamera('sonic', 'camHUD')

    end
  
}



function onStepHit()
    if stepHitFuncs[curStep] then 
        stepHitFuncs[curStep]() -- Executes function at curStep in stepHitFuncs
    end

end