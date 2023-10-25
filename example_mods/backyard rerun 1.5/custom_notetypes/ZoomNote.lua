function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'ZoomNote' then
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
			end
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'ZoomNote' then 
		triggerEvent('Add Camera Zoom', '0.15', '0.09');
	end
end

function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
	if noteType == 'ZoomNote' then 
		triggerEvent('Add Camera Zoom', '0.15', '0.09');
	end
end