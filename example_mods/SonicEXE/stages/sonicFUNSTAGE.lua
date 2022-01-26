function onCreate()
	-- background shit
	makeLuaSprite('sonicFUNsky', 'FunInfiniteStage/sonicFUNsky', -600, -200)
	setScrollFactor('sonicFUNsky', 0.9, 0.9)
	addLuaSprite('sonicFUNsky', false)
	scaleObject('sonicFUNsky', 0.9, 0.9);

	makeLuaSprite('Bush2', 'FunInfiniteStage/Bush2', -42, 171)
	setScrollFactor('Bush2', 0.9, 0.9)
	addLuaSprite('Bush2', false)
	scaleObject('Bush2', 0.9, 0.9);

	if not lowQuality then	
		makeAnimatedLuaSprite('Majin Boppers Back', 'FunInfiniteStage/Majin Boppers Back', 182, -100)
		addAnimationByPrefix('Majin Boppers Back', 'bounce', 'MajinBop2 instance 1', 14, true)
		addLuaSprite('Majin Boppers Back', false)
		objectPlayAnimation('Majin Boppers Back', 'bounce', true)
		setScrollFactor('Majin Boppers Back', 0.9, 0.9);
		scaleObject('Majin Boppers Back', 0.9, 0.9);
	end
	
	makeLuaSprite('Bush 1', 'FunInfiniteStage/Bush 1', 132, 354)
	setScrollFactor('Bush 1', 0.9, 0.9)
	addLuaSprite('Bush 1', false)
	scaleObject('Bush 1', 0.9, 0.9);

	if not lowQuality then	
		makeAnimatedLuaSprite('Majin Boppers Front', 'FunInfiniteStage/Majin Boppers Front', -169, -167)
		addAnimationByPrefix('Majin Boppers Front', 'bounce', 'MajinBop1 instance 1', 14, true)
		addLuaSprite('Majin Boppers Front', false)
		objectPlayAnimation('Majin Boppers Front', 'bounce', true)
		setScrollFactor('Majin Boppers Front', 0.9, 0.9);
		scaleObject('Majin Boppers Front', 0.9, 0.9);
	end

	makeLuaSprite('floor BG', 'FunInfiniteStage/floor BG', -340, 660)
	setScrollFactor('floor BG', 0.9, 0.9)
	addLuaSprite('floor BG', false)
	scaleObject('floor BG', 0.9, 0.9);

	if not lowQuality then	
		makeAnimatedLuaSprite('majin FG1', 'FunInfiniteStage/majin FG1', 1126, 903)
		addAnimationByPrefix('majin FG1', 'bounce', 'majin front bopper1', 14, true)
		addLuaSprite('majin FG1', false)
		objectPlayAnimation('majin FG1', 'bounce', true)
		setScrollFactor('majin FG1', 0.9, 0.9);
		scaleObject('majin FG1', 0.9, 0.9);

		makeAnimatedLuaSprite('majin FG2', 'FunInfiniteStage/majin FG2', -293, 871)
		addAnimationByPrefix('majin FG2', 'bounce', 'majin front bopper2', 14, true)
		addLuaSprite('majin FG2', false)
		objectPlayAnimation('majin FG2', 'bounce', true)
		setScrollFactor('majin FG2', 0.9, 0.9);
		scaleObject('majin FG2', 0.9, 0.9);
	end

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end