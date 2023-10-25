function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'PhoneThrow' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes/NOTE_phone'); --Change texture
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
			end
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
    if noteType == 'PhoneThrow' then
        setObjectOrder('dadGroup', getObjectOrder('boyfriendGroup') + 1)
        triggerEvent('Play Animation', 'PhoneThrow', 'Dad')
        triggerEvent('Play Animation', 'dodge', 'BF')
    end
end

function noteMiss(membersIndex, noteData, noteType, isSustainNote)
    if noteType == 'PhoneThrow' then
        setObjectOrder('dadGroup', getObjectOrder('boyfriendGroup') + 1)
        triggerEvent('Play Animation', 'PhoneThrow', 'Dad')
        noteTweenAlpha('alphaTween', noteData + 4, 0, 0.01, 'linear')
        triggerEvent('Play Animation', 'hurt', 'BF')
        runTimer('fadebackwait', 3)
        function onTimerCompleted(tag, loops, loopsLeft)
            if tag == 'fadebackwait' then
                for i = 4,7 do
                    if isSustainNote == false then
                        noteTweenAlpha('alphaTween2'..i, i, 1, 5, 'easeInExpo')
                    else
                        noteTweenAlpha('alphaTween3'..i, i, 0.4, 5, 'easeInExpo')
                    end
                end
            end
        end
    end
end