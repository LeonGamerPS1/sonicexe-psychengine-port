function onCreate()
    --shit

    print('too-fest/script.lua: Precached shit!!!!!')
end

function onGameOver()
    if Cutscenes then --dying shit
        startVideo('BfFuckingDies');
        return Function_Stop;
    end
	return Function_Continue;
end