local allowCountdown = false

function onStartCountdown()
    if Cutscenes then
        if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
            startVideo('tooslowcutscene1');
            allowCountdown = true;
            return Function_Stop;
        end
        
    end
    return Function_Continue;
end