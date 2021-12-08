function onCreate()
	-- background shit
	makeLuaSprite('SKY', 'SKY', -222, -16 + 150);
	setScrollFactor('SKY', 0.9, 0.9);
	scaleObject('SKY', 1.0, 1.0);
	
	makeLuaSprite('FLOOR2', 'FLOOR2', -345, -289 + 170);
	setScrollFactor('FLOOR2', 0.9, 0.9);
	scaleObject('FLOOR2', 1.0, 1.0);

	makeLuaSprite('FLOOR1', 'FLOOR1', -297, -246 + 150);
	setScrollFactor('FLOOR1', 0.9, 0.9);
	scaleObject('FLOOR1', 1.0, 1.0);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('HILLS', 'HILLS', -264, -156 + 150);
		setScrollFactor('HILLS', 0.9, 0.9);
		scaleObject('HILLS', 1.0, 1.0);

		makeLuaSprite('EGGMAN', 'EGGMAN', -218, -219 + 150);
		setScrollFactor('EGGMAN', 0.9, 0.9);
		scaleObject('EGGMAN', 1.0, 1.0);

		makeLuaSprite('TAIL', 'TAIL', -119 - 150, -259 + 150);
		setScrollFactor('TAIL', 0.9, 0.9);
		scaleObject('TAIL', 1.0, 1.0);

		makeLuaSprite('KNUCKLE', 'KNUCKLE', 185 + 100, -350 + 150);
		setScrollFactor('KNUCKLE', 0.9, 0.9);
		scaleObject('KNUCKLE', 1.0, 1.0);
		
		makeAnimatedLuaSprite('TailsSpike', 'TailsSpikeAnimated', -100, 50)
		addAnimationByPrefix('TailsSpike', 'bounce', 'Tails Spike Animated instance 1', 14, true)
		addLuaSprite('TailsSpike', true)
		objectPlayAnimation('TailsSpike', 'bounce', true)
		setScrollFactor('TailsSpike', 0.9, 0.9);
		scaleObject('TailsSpike', 1.2, 1.2);
	end

	addLuaSprite('SKY', false);
    addLuaSprite('HILLS', false);
    addLuaSprite('FLOOR2', false);
    addLuaSprite('FLOOR1', false);
    addLuaSprite('EGGMAN', false);
    addLuaSprite('TAIL', false);
    addLuaSprite('KNUCKLE', false);
    addLuaSprite('TailsSpike', false);
   	addLuaSprite('Jumpscare', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end