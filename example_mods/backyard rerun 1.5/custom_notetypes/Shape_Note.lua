function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Shape Note' then  --Checks if the note is the one in the script. Set this to the name of your file.
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes/NOTE_assets_Shape');
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
			setPropertyFromGroup('notes', i, 'alpha', 0.5); 

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
			end
		end
	end
end

holdingSpace = false

function onUpdate(elapsed)
	if keyPressed("space") then
		holdingSpace = true
	else
		holdingSpace = false
	end

	for i = 0, getProperty('notes.length')-1 do
		if getPropertyFromGroup('notes', i, 'noteType') == '' then
			if holdingSpace == true then
				if getPropertyFromGroup('notes', i, 'mustPress') then
					setPropertyFromGroup('notes', i, 'alpha', 0.5); 
					setPropertyFromGroup('notes', i, 'tooLate', true); 
				end
			else
				if getPropertyFromGroup('notes', i, 'mustPress') then
					setPropertyFromGroup('notes', i, 'alpha', 1);
					setPropertyFromGroup('notes', i, 'tooLate', false); 
				end
			end
		elseif getPropertyFromGroup('notes', i, 'noteType') ~= 'Shape Note' then
			if holdingSpace == true then
				if getPropertyFromGroup('notes', i, 'mustPress') then
					setPropertyFromGroup('notes', i, 'alpha', 1); 
					setPropertyFromGroup('notes', i, 'tooLate', false); 
				end
			else
				if getPropertyFromGroup('notes', i, 'mustPress') then
					setPropertyFromGroup('notes', i, 'alpha', 0.5);
					setPropertyFromGroup('notes', i, 'tooLate', true); 
				end
			end
		end
	end
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Shape Note' then
		-- put something here if you want
	end
end

-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Shape Note' then
		-- put something here if you want
	end
end