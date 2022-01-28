function onCreate()
   precacheImage('three'); -- so it doesn't freeze
   precacheImage('two'); -- so it doesn't freeze
   precacheImage('one'); -- so it doesn't freeze
   precacheImage('gofun'); -- so it doesn't freeze

   --debugPrint('Lua Precached shit!!!!!')
end

stepHitFuncs = { --a bunch of timed events, timed to steps (all code typed by junior - https://www.youtube.com/channel/UCJGR8x_g-cE1KsXKR_jZXAg)

    [888] = function() --888
    makeLuaSprite('three', 'FunInfiniteStage/three', 450, 200);
    setScrollFactor('three', 0, 0);
    scaleObject('three', 0.5, 0.5);

    if Popups then
        addLuaSprite('three', true);
    end

    setObjectCamera('three', 'camHUD')

    end,

    [890] = function() --890
    removeLuaSprite('three', true);
    
    end,

    [891] = function() --891
    makeLuaSprite('two', 'FunInfiniteStage/two', 450, 200);
    setScrollFactor('two', 0, 0);
    scaleObject('two', 0.5, 0.5);
    
    if Popups then
        addLuaSprite('two', true);
    end
    
    setObjectCamera('two', 'camHUD')
    
    end,
    
    [894] = function() --894
    removeLuaSprite('two', true);
    
    end,

    [895] = function() --885
    makeLuaSprite('one', 'FunInfiniteStage/one', 450, 200);
    setScrollFactor('one', 0, 0);
    scaleObject('one', 0.5, 0.5);
        
    if Popups then
        addLuaSprite('one', true);
    end

    setObjectCamera('one', 'camHUD')
        
    end,
        
    [899] = function() --899
    removeLuaSprite('one', true);
    
    end,

    [900] = function() --900
    makeLuaSprite('gofun', 'FunInfiniteStage/gofun', 450, 200);
    setScrollFactor('gofun', 0, 0);
    scaleObject('gofun', 0.5, 0.5);
    
    if Popups then
        addLuaSprite('gofun', true);
    end
    
    setObjectCamera('gofun', 'camHUD')
            
    end,
            
    [905] = function() --905
    removeLuaSprite('gofun', true);
    
    end
  
}

function onStepHit()
    if stepHitFuncs[curStep] then 
        stepHitFuncs[curStep]() -- Executes function at curStep in stepHitFuncs
    end

end