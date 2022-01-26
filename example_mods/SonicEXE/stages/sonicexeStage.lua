function onCreate()
	-- background shit
	makeLuaSprite('sky2', 'sky2', -414, -440.8)
	setScrollFactor('sky2', 0.9, 0.9)
	addLuaSprite('sky2', false)
	scaleObject('sky2', 1.4, 1.4);

	makeLuaSprite('ground2', 'ground2', -309.95, -240.2)
	setScrollFactor('ground2', 0.9, 0.9)
	addLuaSprite('ground2', false)
	scaleObject('ground2', 1.2, 1.2);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('backtrees', 'backtrees', -290.55, -298.3)
		setScrollFactor('backtrees', 0.9, 0.9)
		addLuaSprite('backtrees', false)
		scaleObject('backtrees', 1.2, 1.2);
	
		makeLuaSprite('trees', 'trees', -306, -334.65)
		setScrollFactor('trees', 0.9, 0.9)
		addLuaSprite('trees', false)
		scaleObject('trees', 1.2, 1.2);
	end

	addLuaSprite('sky2', false);
	addLuaSprite('backtrees', false);
	addLuaSprite('trees', false);
	addLuaSprite('ground2', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end