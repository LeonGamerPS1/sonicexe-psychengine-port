function onCreate()
    --shit...

    print('triple-trouble/script.lua: Precached shit!!!!!')
end

function onStepHit()
    if stepHitFuncs[curStep] then 
        stepHitFuncs[curStep]() -- Executes function at curStep in stepHitFuncs
    end

end

stepHitFuncs = { --a bunch of timed events, timed to steps (all code typed by junior - https://www.youtube.com/channel/UCJGR8x_g-cE1KsXKR_jZXAg)
    [1] = function()
        noteTweenX('NoteMove1', 0, 100, 0.000000001, cubeInOut)
        noteTweenX('NoteMove2', 1, 200, 0.000000001, cubeInOut)
        noteTweenX('NoteMove3', 2, -768, 0.000000001, cubeInOut)
        noteTweenX('NoteMove4', 3, 300, 0.000000001, cubeInOut)
        noteTweenX('NoteMove5', 4, 400, 0.000000001, cubeInOut)
    end,

    [1287] = function()
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
    end,

    [2820] = function()
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