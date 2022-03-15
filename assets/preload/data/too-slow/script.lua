if Cutscenes then
  
  local allowCountdown = false

  --OPENING CUTSCENE
  function onStartCountdown()
      if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
          startVideo('tooslowcutscene1');
          allowCountdown = true;
          return Function_Stop;
      end
      return Function_Continue;
  end
  
end

function onCreate()
    precacheImage('jumpscare/hitStatic'); -- so it doesn't freeze
	  precacheXml('jumpscare/hitStatic'); -- so it doesn't freeze
	  precacheSound('hitStatic1'); -- so it doesn't freeze
    precacheImage('sonicJUMPSCARE'); -- so it doesn't freeze
    precacheXml('sonicJUMPSCARE'); -- so it doesn't freeze
    precacheImage('daSTAT'); -- so it doesn't freeze
    precacheImage('RED'); -- so it doesn't freeze
    precacheImage('simplejump'); -- so it doesn't freeze
    precacheSound('simplejumpsound'); -- so it doesn't freeze
    precacheSound('datOneSound'); -- so it doesn't freeze
    precacheSound('sppok'); -- so it doesn't freeze
    precacheSound('jumpscare'); -- so it doesn't freeze
    precacheSound('datOneSound'); -- so it doesn't freeze
    
    print('too-slow/script.lua: Precached shit!!!!!')
end

local xx = 500;
local yy = 570;
local xx2 = 1050;
local yy2 = 585;
local ofs = 25;
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
            if getProperty('dad.animation.curAnim.name') == 'iamgod' then
              triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLAUGH' then
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

    [1] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
    playSound('simplejumpsound', 1);

		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end

    setObjectCamera('daSTAT', 'camHUD')

    end,

    [3] = function()
    removeLuaSprite('daSTAT', true);
    
    end,

    [130] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
    
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
    
    setObjectCamera('daSTAT', 'camHUD')
    
    end,
    
    [131] = function()
    removeLuaSprite('daSTAT', true);
    
    end,

    [263] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
        
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
        
    setObjectCamera('daSTAT', 'camHUD')
        
    end,
        
    [264] = function()
    removeLuaSprite('daSTAT', true);
    
    end,

    [451] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
            
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
            
    setObjectCamera('daSTAT', 'camHUD')
            
    end,
            
    [452] = function()
    removeLuaSprite('daSTAT', true);
    
    end,

    [647] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                
    setObjectCamera('daSTAT', 'camHUD')
                
    end,
        
    [648] = function()
    removeLuaSprite('daSTAT', true);
    
    end,

    [765] = function()
    makeLuaSprite('RED', 'Jumpscare/RED', 0, 0);
    setScrollFactor('RED', 0, 0);
    scaleObject('RED', 5, 5);
                    
    if Popups then
        addLuaSprite('RED', true);

        print('too-slow/script.lua: RED!!!!')
    end
                    
    setObjectCamera('RED', 'camHUD')
                    
    end,
                    
    [766] = function()
    removeLuaSprite('RED', true);
                        
    end,

    [768] = function()
    makeLuaSprite('RED', 'Jumpscare/RED', 0, 0);
    setScrollFactor('RED', 0, 0);
    scaleObject('RED', 5, 5);
                        
    if Popups then
        addLuaSprite('RED', true);

        print('too-slow/script.lua: RED!!!!')
    end
                        
    setObjectCamera('RED', 'camHUD')
                        
    end,
                        
    [769] = function()
    removeLuaSprite('RED', true);
                            
    end,

    [770] = function()
    makeLuaSprite('RED', 'Jumpscare/RED', 0, 0);
    setScrollFactor('RED', 0, 0);
    scaleObject('RED', 5, 5);
                        
    if Popups then
        addLuaSprite('RED', true);

        print('too-slow/script.lua: RED!!!!')
    end
                        
    setObjectCamera('RED', 'camHUD')
                        
    end,
                        
    [771] = function()
    removeLuaSprite('RED', true);
                            
    end,

    [773] = function()
    makeLuaSprite('RED', 'Jumpscare/RED', 0, 0);
    setScrollFactor('RED', 0, 0);
    scaleObject('RED', 5, 5);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                        
    if Popups then
        addLuaSprite('RED', true);

        print('too-slow/script.lua: RED!!!!')
    end
                        
    setObjectCamera('RED', 'camHUD')
                        
    end,
                        
    [774] = function()
    removeLuaSprite('RED', true);
                            
    end,

    [776] = function()
    makeLuaSprite('RED', 'Jumpscare/RED', 0, 0);
    setScrollFactor('RED', 0, 0);
    scaleObject('RED', 5, 5);
                        
    if Popups then
        addLuaSprite('RED', true);

        print('too-slow/script.lua: RED!!!!')
    end
                        
    setObjectCamera('RED', 'camHUD')
                        
    end,
                        
    [777] = function()
    removeLuaSprite('RED', true);
                            
    end,

    [780] = function()
    makeLuaSprite('RED', 'Jumpscare/RED', 0, 0);
    setScrollFactor('RED', 0, 0);
    scaleObject('RED', 5, 5);
                            
    if Popups then
        addLuaSprite('RED', true);

        print('too-slow/script.lua: RED!!!!')
    end
                            
    setObjectCamera('RED', 'camHUD')
                            
    end,
                            
    [781] = function()
    removeLuaSprite('RED', true);
                                
    end,

    [783] = function()
    makeLuaSprite('RED', 'Jumpscare/RED', 0, 0);
    setScrollFactor('RED', 0, 0);
    scaleObject('RED', 5, 5);
                            
    if Popups then
        addLuaSprite('RED', true);

        print('too-slow/script.lua: RED!!!!')
    end
                            
    setObjectCamera('RED', 'camHUD')
                            
    end,
                            
    [784] = function()
    removeLuaSprite('RED', true);
                                
    end,

    [800] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                    
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                    
    setObjectCamera('daSTAT', 'camHUD')
                    
    end,
                    
    [802] = function()
    removeLuaSprite('daSTAT', true);
    
    end,

    [854] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                        
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                        
    setObjectCamera('daSTAT', 'camHUD')
                        
    end,
                        
    [855] = function()
    removeLuaSprite('daSTAT', true);
    
    end,

    [894] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                            
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                            
    setObjectCamera('daSTAT', 'camHUD')
                            
    end,
                            
    [895] = function()
    removeLuaSprite('daSTAT', true);
    
    end,

    [920] = function()
    makeLuaSprite('simplejump', 'Jumpscare/simplejump', -250, -125);
    setScrollFactor('simplejump', 0, 0);
    scaleObject('simplejump', 1, 1);

    if Popups then
        playSound('sppok', 1);
    end
                                
    if Popups then
		addLuaSprite('simplejump', true);

		print('too-slow/script.lua: SONICEXE!')
    end
                                
    setObjectCamera('simplejump', 'camHUD')
                                
    end,
                                
    [923] = function()
    removeLuaSprite('simplejump', true);

    end,

    [938] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                                
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                                
    setObjectCamera('daSTAT', 'camHUD')
                                
    end,
                                
    [939] = function()
    removeLuaSprite('daSTAT', true);
    
    end,

    [980] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                                
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                                
    setObjectCamera('daSTAT', 'camHUD')
                                
    end,
                                
    [981] = function()
    removeLuaSprite('daSTAT', true);
    
    end,

    [1032] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                                
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                                
    setObjectCamera('daSTAT', 'camHUD')
                                
    end,
                                
    [1033] = function()
    removeLuaSprite('daSTAT', true);
    
    end,

    [1064] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                                    
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                                    
    setObjectCamera('daSTAT', 'camHUD')
                                    
    end,
                                    
    [1065] = function()
    removeLuaSprite('daSTAT', true);
        
    end,

    [1105] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                                    
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                                    
    setObjectCamera('daSTAT', 'camHUD')
                                    
    end,
                                    
    [1106] = function()
    removeLuaSprite('daSTAT', true);
        
    end,

    [1122] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                                    
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                                    
    setObjectCamera('daSTAT', 'camHUD')
                                    
    end,
                                    
    [1123] = function()
    removeLuaSprite('daSTAT', true);
        
    end,

    [1177] = function()
    makeLuaSprite('simplejump', 'Jumpscare/simplejump', -250, -125);
    setScrollFactor('simplejump', 0, 0);
    scaleObject('simplejump', 1, 1);

    if Popups then
        playSound('sppok', 1);
    end
                                    
    if Popups then
		addLuaSprite('simplejump', true);

		print('too-slow/script.lua: SONICEXE!')
    end
                                    
    setObjectCamera('simplejump', 'camHUD')
                                    
    end,
                                    
    [1179] = function()
    removeLuaSprite('simplejump', true);
    
    end,

    [1245] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                                        
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                                        
    setObjectCamera('daSTAT', 'camHUD')
                                        
    end,
                                        
    [1246] = function()
    removeLuaSprite('daSTAT', true);
            
    end,

    [1305] = function()
    setProperty('camHUD.visible',false)
                
    end,

    [1336] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                                                
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                                                
    setObjectCamera('daSTAT', 'camHUD')
                                                
    end,
                                                
    [1338] = function()
    removeLuaSprite('daSTAT', true);
                    
    end,

    [1336] = function()
    makeLuaSprite('simplejump', 'Jumpscare/simplejump', -250, -125);
    setScrollFactor('singlejump', 0, 0);
    scaleObject('simplejump', 1, 1);

    if Popups then
        playSound('sppok', 1);
    end
                                      
    if Popups then
		addLuaSprite('simplejump', true);

		print('too-slow/script.lua: SONICEXE!')
    end
                                        
    setObjectCamera('simplejump', 'camHUD')
                                        
    end,
                                        
    [1338] = function()
    removeLuaSprite('simplejump', true);
        
    end,

    [1347] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                                            
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                                            
    setObjectCamera('daSTAT', 'camHUD')
                                            
    end,

    [1432] = function()
    setProperty('camHUD.visible',true)
                        
    end,
                                            
    [1349] = function()
    removeLuaSprite('daSTAT', true);
                
    end,

    [1433] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                                            
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                                            
    setObjectCamera('daSTAT', 'camHUD')
                                            
    end,
                                            
    [1434] = function()
    removeLuaSprite('daSTAT', true);
                
    end,

    [1484] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                                            
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                                            
    setObjectCamera('daSTAT', 'camHUD')
                                            
    end,
                                            
    [1485] = function()
    removeLuaSprite('daSTAT', true);
                
    end,

    [1494] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                                            
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                                            
    setObjectCamera('daSTAT', 'camHUD')
                                            
    end,
                                            
    [1495] = function()
    removeLuaSprite('daSTAT', true);
                
    end,

    [1510] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                                            
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                                            
    setObjectCamera('daSTAT', 'camHUD')
                                            
    end,
                                            
    [1511] = function()
    removeLuaSprite('daSTAT', true);
                
    end,

    [1558] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                                            
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                                            
    setObjectCamera('daSTAT', 'camHUD')
                                            
    end,
                                            
    [1559] = function()
    removeLuaSprite('daSTAT', true);
                
    end,

    [1577] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                                            
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                                            
    setObjectCamera('daSTAT', 'camHUD')
                                            
    end,
                                            
    [1578] = function()
    removeLuaSprite('daSTAT', true);
                
    end,

    [1596] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                                            
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                                            
    setObjectCamera('daSTAT', 'camHUD')
                                            
    end,
                                            
    [1597] = function()
    removeLuaSprite('daSTAT', true);
                
    end,

    [1617] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                                            
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                                            
    setObjectCamera('daSTAT', 'camHUD')
                                            
    end,
                                            
    [1618] = function()
    removeLuaSprite('daSTAT', true);
                
    end,

    [1647] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                                            
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                                            
    setObjectCamera('daSTAT', 'camHUD')
                                            
    end,
                                            
    [1648] = function()
    removeLuaSprite('daSTAT', true);
                
    end,

    [1655] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                                            
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                                            
    setObjectCamera('daSTAT', 'camHUD')
                                            
    end,
                                            
    [1656] = function()
    removeLuaSprite('daSTAT', true);
                
    end,

    [1690] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                                            
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                                            
    setObjectCamera('daSTAT', 'camHUD')
                                            
    end,
                                            
    [1691] = function()
    removeLuaSprite('daSTAT', true);
                
    end,

    [1715] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                                            
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                                            
    setObjectCamera('daSTAT', 'camHUD')
                                            
    end,
                                            
    [1716] = function()
    removeLuaSprite('daSTAT', true);
                
    end,

    [1736] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                                            
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                                            
    setObjectCamera('daSTAT', 'camHUD')
                                            
    end,
                                            
    [1738] = function()
    removeLuaSprite('daSTAT', true);
                
    end,

    [1775] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                                            
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                                            
    setObjectCamera('daSTAT', 'camHUD')
                                            
    end,
                                            
    [1776] = function()
    removeLuaSprite('daSTAT', true);
                
    end,

    [1816] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                                            
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                                            
    setObjectCamera('daSTAT', 'camHUD')
                                            
    end,
                                            
    [1817] = function()
    removeLuaSprite('daSTAT', true);
                
    end,

    [1832] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                                            
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                                            
    setObjectCamera('daSTAT', 'camHUD')
                                            
    end,
                                            
    [1833] = function()
    removeLuaSprite('daSTAT', true);
                
    end,

    [1860] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);

    if Popups then
        playSound('simplejumpsound', 1);
    end
                                            
    if Popups then
		addLuaSprite('daSTAT', true);

		print('too-slow/script.lua: DA STAT!!!!')
    end
                                            
    setObjectCamera('daSTAT', 'camHUD')
                                            
    end,
                                            
    [1861] = function()
    removeLuaSprite('daSTAT', true);
                
    end,

    [1720] = function()
    makeAnimatedLuaSprite('sonic', 'sonicJUMPSCARE', 50, 0); --x and y

    setScrollFactor('sonic', 0, 0);
    addAnimationByPrefix('sonic', 'scare', 'sonicSPOOK0', 24, false);
    objectPlayAnimation('sonic', 'scare', false);

    scaleObject('sonic', 1, 1);
    
    if Popups then
        playSound('datOneSound', 1);
        playSound('jumpscare', 0.3);

        addLuaSprite('sonic', true);

        print('too-slow/script.lua: SONICEXE JUMPSCARE!')
    end

    setObjectCamera('sonic', 'camHUD')

    end
  
}