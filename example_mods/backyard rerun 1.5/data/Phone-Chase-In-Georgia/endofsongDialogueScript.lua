local allowEndShit = false

function onEndSong()
	setProperty('healthBar.visible', false)
    setProperty('healthBarBG.visible', false)
    setProperty('iconP1.visible', false)
    setProperty('iconP2.visible', false)
	setProperty('scoreTxt.visible', false)
 	if not allowEndShit and not isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		startDialogue('enddialogue', 'diamusic'); 
		allowEndShit = true;
		return Function_Stop;
 	end
 	return Function_Continue;
end