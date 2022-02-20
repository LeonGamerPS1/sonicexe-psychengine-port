function onCreate()
   precacheImage('three'); -- so it doesn't freeze
   precacheImage('two'); -- so it doesn't freeze
   precacheImage('one'); -- so it doesn't freeze
   precacheImage('gofun'); -- so it doesn't freeze

   print('endless/script.lua: Precached shit!!!!!')
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