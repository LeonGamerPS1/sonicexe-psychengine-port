
function onCreate()

resetStacks();

end
function onEndSong()

resetStacks();

end
function addOneStack()
Bruh = poisonstacks;
poisonstacks = Bruh + 0.40;

end
function resetStacks()
poisonstacks = 0;
end
function onStepHit()

curHealth = getProperty('health');

bruh = 0.01 * poisonstacks;

	if bruh >= curHealth then
	setProperty('health', 0);
	else
	setProperty('health', curHealth - bruh);
	end
end
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Blurry Note' then
		addOneStack();

		runTimer('timer', 6.0);
	end

end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'timer' then
		resetStacks();
    end
end