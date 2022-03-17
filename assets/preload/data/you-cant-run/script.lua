function onCreate()
    precacheImage('jumpscare/hitStatic'); -- so it doesn't freeze
	--precacheXml('jumpscare/hitStatic'); -- so it doesn't freeze
	precacheSound('hitStatic1'); -- so it doesn't freeze
    precacheImage('daSTAT'); -- so it doesn't freeze
    precacheImage('GreenHill'); -- so it doesn't freeze

    print('you-cant-run/script.lua: Precached shit!!!!!')
end

function onUpdate(elapsed)

    if curStep == 755 then
        for i = 0, getProperty('unspawnNotes.length')-1 do
            if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Sonic Note' then
                    setPropertyFromGroup('unspawnNotes', i, 'texture', 'staticNotes');
                elseif getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Blurry Note' then
                    setPropertyFromGroup('unspawnNotes', i, 'texture', 'BLURNOTE_assets');
                else
                    setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets');
                end
            end
        end
    end

function onStepHit()
    if stepHitFuncs[curStep] then 
        stepHitFuncs[curStep]() -- Executes function at curStep in stepHitFuncs
    end

end

stepHitFuncs = { --a bunch of timed events, timed to steps (all code typed by junior - https://www.youtube.com/channel/UCJGR8x_g-cE1KsXKR_jZXAg)

    [527] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);
    
    if Popups then
        addLuaSprite('daSTAT', true);

        print('you-cant-run/script.lua: DA STAT!!!!')
    end
    
    setObjectCamera('daSTAT', 'camHUD')

    end,

    [528] = function() --528

    for i=0,4,1 do
    setPropertyFromGroup('opponentStrums', i, 'texture', 'PIXEL_NOTE_assets');
    setPropertyFromGroup('playerStrums', i, 'texture', 'PIXEL_NOTE_assets');
    end

    for i = 0, getProperty('unspawnNotes.length')-1 do
    setPropertyFromGroup('unspawnNotes', i, 'texture', 'PIXEL_NOTE_assets');
    end

	makeLuaSprite('GreenHill', 'GreenHill', -275, -275)
	setScrollFactor('GreenHill', 0.9, 0.9)
	scaleObject('GreenHill', 8.0, 8.0);
    setProperty('GreenHill.antialiasing', false)
	addLuaSprite('GreenHill', false)

    print('you-cant-run/script.lua: GREEN HILL!')
    
    end,

    [530] = function()
    removeLuaSprite('daSTAT', true);

    end,

    [783] = function()
    makeLuaSprite('daSTAT', 'Jumpscare/daSTAT', 0, 0);
    setScrollFactor('daSTAT', 0, 0);
    scaleObject('daSTAT', 2, 2);
        
    if Popups then
        addLuaSprite('daSTAT', true);

        print('you-cant-run/script.lua: DA STAT!!!!')
    end
        
    setObjectCamera('daSTAT', 'camHUD')
    
    end,

    [784] = function()

    for i=0,4,1 do
		setPropertyFromGroup('opponentStrums', i, 'texture', 'NOTE_assets');
		setPropertyFromGroup('playerStrums', i, 'texture', 'NOTE_assets');
	end

    removeLuaSprite('GreenHill', true);

    end,

    [786] = function()
    removeLuaSprite('daSTAT', true);

    end

}