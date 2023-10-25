function onCreatePost()
	makeLuaSprite('NoonEffect', 'Bambi/NoonEffect', 0, 0)
	addLuaSprite('NoonEffect',true)
	setObjectCamera('NoonEffect', 'camgame')
	setProperty('NoonEffect.scale.x', 12.5);
    setProperty('NoonEffect.scale.y', 12.5);
	setProperty('NoonEffect.alpha', 0.0)

end

function onUpdate(elapsed)

	if curStep == 400 then
		doTweenAlpha('TurningNoon', 'NoonEffect', 0.7, 27.5)
		doTweenAlpha('TurningNoon2', 'NoonBG', 1, 27.5)
	end

	if curStep == 800 then
		doTweenAlpha('TurningNoon', 'NoonEffect', 0, 20)
	end

end