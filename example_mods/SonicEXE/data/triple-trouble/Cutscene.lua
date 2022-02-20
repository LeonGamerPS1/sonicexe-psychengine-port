local allowCountdown = false
local CutsceneEnd = false

--OPENING CUTSCENE
function onStartCountdown()
    if Cutscenes then
        if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
            startVideo('youcantruncutscene2');
            allowCountdown = true;
            return Function_Stop;
        end
        
    end
    return Function_Continue;
end

function onEndSong()
	-- song ended/starting transition (Will be delayed if you're unlocking an achievement)
    if Cutscenes then
        if isStoryMode and not cutsceneEnded then
            if difficulty == 2 then
                
                --if score > number then
                    startVideo('soundtestcodes');
                    CutsceneEnd = true;
                    return Function_Stop --to stop the song from ending for playing a cutscene or something.
                --end
            end
        end
    end   
    
        return Function_Continue;
end