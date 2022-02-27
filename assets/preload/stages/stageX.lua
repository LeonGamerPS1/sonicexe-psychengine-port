function onCreate()
	-- background shit
	makeLuaSprite('SKY', 'LordXStage/sky', -1500, -1006);
	setScrollFactor('SKY', 0.9, 0.9);
	scaleObject('SKY', 1, 1);
	
	if not lowQuality then
		makeLuaSprite('hills 1', 'LordXStage/hills1', -1040, -606);
		setScrollFactor('hills 1', 0.9, 0.9);
		scaleObject('hills 1', 1, 1.1);
    end
	
	makeLuaSprite('floor', 'LordXStage/floor', -1000, -496);
	setScrollFactor('floor', 0.9, 0.9);
	scaleObject('floor', 0.9, 0.9);

	if not lowQuality then
		makeAnimatedLuaSprite('eyeflower', 'LordXStage/WeirdAssFlower_Assets', -125, 300)
		addAnimationByPrefix('eyeflower', 'animatedeye', 'flower', 30, true)
		objectPlayAnimation('eyeflower', 'animatedeye', true)
		scaleObject('eyeflower', 0.8, 0.8);
		setScrollFactor('eyeflower', 0.9, 0.9);

		makeAnimatedLuaSprite('hands', 'LordXStage/NotKnuckles_Assets', 375, 150)
		addAnimationByPrefix('hands', 'handss', 'Notknuckles', 30, true)
		objectPlayAnimation('hands', 'handss', true)
		scaleObject('hands', 0.5, 0.5);
		setScrollFactor('hands', 0.9, 0.9);

		makeLuaSprite('smallflower', 'LordXStage/smallflower', -925, -100);
		setScrollFactor('smallflower', 0.9, 0.9);
		scaleObject('smallflower', 0.6, 0.9);

		makeLuaSprite('smallflower2', 'LordXStage/smallflower', -350, -420);
		setScrollFactor('smallflower2', 0.9, 0.9);
		scaleObject('smallflower2', 0.6, 0.9);

		makeLuaSprite('smallflowe2', 'LordXStage/smallflowe2', 1435, -575);
		setScrollFactor('smallflowe2', 0.9, 0.9);
		scaleObject('smallflowe2', 0.6, 0.9);

		makeLuaSprite('tree', 'LordXStage/tree', -600, -546);
		setScrollFactor('tree', 0.9, 0.9);
		scaleObject('tree', 0.7, 0.9);
	end

	addLuaSprite('SKY', false);
    addLuaSprite('hills 1', false);
    addLuaSprite('floor', false);
	addLuaSprite('eyeflower', false)
	addLuaSprite('hands', false)
    addLuaSprite('smallflower', false);
    addLuaSprite('smallflower2', false);
    addLuaSprite('smallflowe2', false);
	addLuaSprite('tree', false);

	print('stageX.lua: Loaded Stage!')
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end