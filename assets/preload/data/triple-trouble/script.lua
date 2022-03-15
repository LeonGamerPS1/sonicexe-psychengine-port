if Cutscenes then
    
    local allowCountdown = false
    local CutsceneEnd = false

    --OPENING CUTSCENE
    function onStartCountdown()
        if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
            startVideo('youcantruncutscene2');
            allowCountdown = true;
            return Function_Stop;
        end
        return Function_Continue;
    end
    
end

function onCreate()
    --shit...

    print('triple-trouble/script.lua: Precached shit!!!!!')
end

local xx = 500;
local yy = 535;
local xx2 = 1050;
local yy2 = 535;
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
    makeAnimatedLuaSprite('static', 'Phase3/Phase3Static', -50, -40); --x and y

    setScrollFactor('static', 0, 0);
    addAnimationByPrefix('static', 'stat', 'Phase3Static instance 1', 24, false);
    objectPlayAnimation('static', 'stat', false);

    scaleObject('static', 5, 5);
  
    if Popups then
        addLuaSprite('static', true);

        print('triple-trouble/script.lua: Static change thing')
    end

    noteTweenX('NoteMove1', 0, 100, 0.000000001, cubeInOut)
    noteTweenX('NoteMove2', 1, 200, 0.000000001, cubeInOut)
    noteTweenX('NoteMove3', 2, -768, 0.000000001, cubeInOut)
    noteTweenX('NoteMove4', 3, 300, 0.000000001, cubeInOut)
    noteTweenX('NoteMove5', 4, 400, 0.000000001, cubeInOut)

    setObjectCamera('static', 'camHUD')

    end,

    [16] = function()
    removeLuaSprite('static', true);  
    end,

    [144] = function() --144
    makeLuaSprite('TailsJump', 'Jumpscare/Tails', 0, 0);
    setScrollFactor('TailsJump', 0.9, 0.9);
    scaleObject('TailsJump', 1.0, 1.0);

    setObjectCamera('TailsJump', 'camHUD')

    playSound('P3Jumps/TailsScreamLOL', 0.5);

    addLuaSprite('TailsJump', true)
    end,

    [152] = function()
    removeLuaSprite('TailsJump', true);  
    end,

    [1032] = function()
    makeAnimatedLuaSprite('static', 'Phase3/Phase3Static', -50, -40); --x and y
  
    setScrollFactor('static', 0, 0);
    addAnimationByPrefix('static', 'stat', 'Phase3Static instance 1', 24, false);
    objectPlayAnimation('static', 'stat', false);
  
    scaleObject('static', 5, 5);
    
    if Popups then
        addLuaSprite('static', true);
  
        print('triple-trouble/script.lua: Static change thing')
    end

    setObjectCamera('static', 'camHUD')
  
    end,

    [1042] = function()
        removeLuaSprite('static', true);  
    end,
  
    [1219] = function()
        makeAnimatedLuaSprite('static', 'Phase3/Phase3Static', -50, -40); --x and y
      
        setScrollFactor('static', 0, 0);
        addAnimationByPrefix('static', 'stat', 'Phase3Static instance 1', 24, false);
        objectPlayAnimation('static', 'stat', false);
      
        scaleObject('static', 5, 5);
        
        if Popups then
            addLuaSprite('static', true);
      
            print('triple-trouble/script.lua: Static change thing')
        end
    
        setObjectCamera('static', 'camHUD')
      
    end,

    [1229] = function()
        removeLuaSprite('static', true);  
    end,

    [1287] = function()
        makeAnimatedLuaSprite('static', 'Phase3/Phase3Static', -50, -40); --x and y
      
        setScrollFactor('static', 0, 0);
        addAnimationByPrefix('static', 'stat', 'Phase3Static instance 1', 24, false);
        objectPlayAnimation('static', 'stat', false);
      
        scaleObject('static', 5, 5);
        
        if Popups then
            addLuaSprite('static', true);
      
            print('triple-trouble/script.lua: Static change thing')
        end
        
        noteTweenX('NoteMove1', 0, 700, 0.000000001, cubeInOut)
        noteTweenX('NoteMove2', 1, 800, 0.000000001, cubeInOut)
        noteTweenX('NoteMove3', 2, -910, 0.000000001, cubeInOut) --hello if u are reading, this is the middle note for the opponent so uh pretty useless
        noteTweenX('NoteMove4', 3, 900, 0.000000001, cubeInOut)
        noteTweenX('NoteMove5', 4, 1000, 0.000000001, cubeInOut)
        noteTweenX('NoteMove6', 5, 68, 0.000000001, cubeInOut)
        noteTweenX('NoteMove7', 6, 168, 0.000000001, cubeInOut)
        noteTweenX('NoteMove8', 7, 268, 0.000000001, cubeInOut)
        noteTweenX('NoteMove9', 8, 368, 0.000000001, cubeInOut)
        noteTweenX('NoteMove10', 9, 468, 0.000000001, cubeInOut)
    
        setObjectCamera('static', 'camHUD')
      
    end,

    [1295] = function()
        removeLuaSprite('static', true);  
    end,

    [1296] = function()
        makeLuaSprite('KnucklesJump', 'Jumpscare/Knuckles', 50, 0);
        setScrollFactor('KnucklesJump', 0.9, 0.9);
        scaleObject('KnucklesJump', 1.0, 1.0);

        setObjectCamera('KnucklesJump', 'camHUD')

        playSound('P3Jumps/KnucklesScreamLOL', 0.5);

        addLuaSprite('KnucklesJump', true)
    end,
    
    [1304] = function()
        removeLuaSprite('KnucklesJump', true);  
    end,

    [2307] = function()
        makeAnimatedLuaSprite('static', 'Phase3/Phase3Static', -50, -40); --x and y
      
        setScrollFactor('static', 0, 0);
        addAnimationByPrefix('static', 'stat', 'Phase3Static instance 1', 24, false);
        objectPlayAnimation('static', 'stat', false);
      
        scaleObject('static', 5, 5);
        
        if Popups then
            addLuaSprite('static', true);
      
            print('triple-trouble/script.lua: Static change thing')
        end
    
        setObjectCamera('static', 'camHUD')
      
    end,

    [2320] = function()
        removeLuaSprite('static', true);  
    end,

    [2820] = function()
        makeAnimatedLuaSprite('static', 'Phase3/Phase3Static', -50, -40); --x and y
      
        setScrollFactor('static', 0, 0);
        addAnimationByPrefix('static', 'stat', 'Phase3Static instance 1', 24, false);
        objectPlayAnimation('static', 'stat', false);
      
        scaleObject('static', 5, 5);
        
        if Popups then
            addLuaSprite('static', true);
      
            print('triple-trouble/script.lua: Static change thing')
        end
        
        noteTweenX('NoteMove1', 0, 100, 0.000000001, cubeInOut)
        noteTweenX('NoteMove2', 1, 200, 0.000000001, cubeInOut)
        noteTweenX('NoteMove3', 2, -841, 0.000000001, cubeInOut) --hello if u are reading, this is the middle note for the opponent so uh pretty useless
        noteTweenX('NoteMove4', 3, 300, 0.000000001, cubeInOut)
        noteTweenX('NoteMove5', 4, 400, 0.000000001, cubeInOut)
        noteTweenX('NoteMove6', 5, 710, 0.000000001, cubeInOut)
        noteTweenX('NoteMove7', 6, 810, 0.000000001, cubeInOut)
        noteTweenX('NoteMove8', 7, 910, 0.000000001, cubeInOut)
        noteTweenX('NoteMove9', 8, 1010, 0.000000001, cubeInOut)
        noteTweenX('NoteMove10', 9, 1110, 0.000000001, cubeInOut)
    
        setObjectCamera('static', 'camHUD')
      
    end,

    [2823] = function()
        makeLuaSprite('EggmanJump', 'Jumpscare/Eggman', 50, 0);
        setScrollFactor('EggmanJump', 0.9, 0.9);
        scaleObject('EggmanJump', 1.0, 1.0);

        setObjectCamera('EggmanJump', 'camHUD')

        playSound('P3Jumps/EggmanScreamLOL', 0.5);

        addLuaSprite('EggmanJump', true);
    end,
    
    [2830] = function()
        removeLuaSprite('EggmanJump', true);  
    end,

    [2832] = function()
        removeLuaSprite('static', true);  
    end,

    [4100] = function()
        makeAnimatedLuaSprite('static', 'Phase3/Phase3Static', -50, -40); --x and y
      
        setScrollFactor('static', 0, 0);
        addAnimationByPrefix('static', 'stat', 'Phase3Static instance 1', 24, false);
        objectPlayAnimation('static', 'stat', false);
      
        scaleObject('static', 5, 5);
        
        if Popups then
            addLuaSprite('static', true);
      
            print('triple-trouble/script.lua: Static change thing')
        end
    
        setObjectCamera('static', 'camHUD')
      
    end,

    [4111] = function()
        removeLuaSprite('static', true);  
    end

}

if Cutscenes then

	function onEndSong()
		-- song ended/starting transition (Will be delayed if you're unlocking an achievement)
            if isStoryMode and not cutsceneEnded then
            	if difficulty == 2 then
                
                	--if score > number then
                        startVideo('soundtestcodes');
                    	CutsceneEnd = true;
                    	return Function_Stop --to stop the song from ending for playing a cutscene or something.
                	--end
           	    end
        	end
            return Function_Continue;
    end

end