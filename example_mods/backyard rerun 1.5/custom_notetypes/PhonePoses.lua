function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'PhonePoses' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes/NOTE_phone'); --Change texture
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
			end
		end
	end
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'PhonePoses' and getProperty('dad.animation.curAnim.name') == 'singLEFT' then
		if dadName == 'Bambi' then
			playAnim('dad', 'singLEFT-alt');
		end
	end
	if noteType == 'PhonePoses' and getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
		if dadName == 'Bambi' then
			playAnim('dad', 'singRIGHT-alt');
		end
	end
	if noteType == 'PhonePoses' and getProperty('dad.animation.curAnim.name') == 'singUP' then
		if dadName == 'Bambi' then
			playAnim('dad', 'singUP-alt');
		end
	end
	if noteType == 'PhonePoses' and getProperty('dad.animation.curAnim.name') == 'singDOWN' then
		if dadName == 'Bambi' then
			playAnim('dad', 'singDOWN-alt');
		end
	end

	if noteType == 'PhonePoses' and getProperty('dad.animation.curAnim.name') == 'singLEFT' then
		if dadName == 'SplitathonBambi' then
			playAnim('dad', 'singLEFT-alt');
		end
	end
	if noteType == 'PhonePoses' and getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
		if dadName == 'SplitathonBambi' then
			playAnim('dad', 'singRIGHT-alt');
		end
	end
	if noteType == 'PhonePoses' and getProperty('dad.animation.curAnim.name') == 'singUP' then
		if dadName == 'SplitathonBambi' then
			playAnim('dad', 'singUP-alt');
		end
	end
	if noteType == 'PhonePoses' and getProperty('dad.animation.curAnim.name') == 'singDOWN' then
		if dadName == 'SplitathonBambi' then
			playAnim('dad', 'singDOWN-alt');
		end
	end

	if noteType == 'PhonePoses' and getProperty('dad.animation.curAnim.name') == 'singLEFT' then
		if dadName == 'EnragedBambi' then
			playAnim('dad', 'singLEFT-alt');
		end
	end
	if noteType == 'PhonePoses' and getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
		if dadName == 'EnragedBambi' then
			playAnim('dad', 'singRIGHT-alt');
		end
	end
end