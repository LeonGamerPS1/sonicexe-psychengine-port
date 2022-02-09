function onCreate()
	-- background2 shit
	makeLuaSprite('GreenHill', 'GreenHill', -428.5 + 50 + 700, -449.35 + 25 + 392 + 105 + 50);
	setScrollFactor('GreenHill', 0.9, 0.9);
	scaleObject('GreenHill', 1.4, 1.4);

	addLuaSprite('GreenHill', false);

	print('sonicpixel.lua: why the fuck are you using this????')
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end