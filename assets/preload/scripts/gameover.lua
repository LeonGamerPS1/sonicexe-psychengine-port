function onCreate()
	if boyfriendName == 'bfFUN' then
		setPropertyFromClass('GameOverSubstate', 'characterName', 'bfFUN');
		--setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'bunfriend_death_sound');
		--setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameover1');
	    --setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameover2');
	end

	if songName == 'chaos' then
		setPropertyFromClass('GameOverSubstate', 'characterName', 'fleetway_death');
	end

	--remind for retarded junior uh DONT DO "end," IT FUCKS IT UP
end