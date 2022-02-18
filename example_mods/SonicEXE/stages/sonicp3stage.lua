function onCreate()
	
		makeLuaSprite('Glitch', 'Phase3/Glitch', -621.1, -395.65)
		setScrollFactor('Glitch', 0.9, 0.9)
		scaleObject('Glitch', 1.4, 1.4);
	
		-- sprites that only load if Low Quality is turned off
		if not lowQuality then
			makeAnimatedLuaSprite('StaticBG', 'NewTitleMenuBG', 0, 0)
			addAnimationByPrefix('StaticBG', 'stat', 'TitleMenuSSBG instance 1', 24, true)
			objectPlayAnimation('StaticBG', 'stat', true)
			setScrollFactor('StaticBG', 0.9, 0.9);
			scaleObject('StaticBG', 4.5, 4.5);
	
			makeLuaSprite('trees', 'Phase3/Trees', -607.35, -401.55)
			setScrollFactor('tress', 0.9, 0.9)
			scaleObject('trees', 1.2, 1.2);
	
			makeLuaSprite('Trees2', 'Phase3/Trees2', -623.5, -410.4)
			setScrollFactor('Trees2', 0.9, 0.9)
			scaleObject('Trees2', 1.2, 1.2);
		end
	
		makeLuaSprite('Grass', 'Phase3/Grass', -630.4, -266)
		setScrollFactor('Grass', 0.9, 0.9)
		scaleObject('Grass', 1.2, 1.2);

		addLuaSprite('Glitch', false);
		addLuaSprite('StaticBG', false);
		addLuaSprite('trees', false);
		addLuaSprite('Trees2', false);
		addLuaSprite('Grass', false);

	print('sonicexeStage.lua: Loaded Stage!')

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end