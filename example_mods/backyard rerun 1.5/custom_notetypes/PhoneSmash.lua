function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'PhoneSmash' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes/NOTE_phone'); --Change texture
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
			end
		end
	end
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'PhoneSmash' then 
		playAnim('dad', 'PhoneSmash')
	end
end