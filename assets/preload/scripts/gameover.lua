function onCreate()
	if boyfriendName == 'bfFUN' then
		setPropertyFromClass('GameOverSubstate', 'characterName', 'bfFUN');
		setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'bunfriend_death_sound');
		setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameover1');
	    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameover2');

		addLuaSprite('topMajins', 100, 100, true)
	end
end