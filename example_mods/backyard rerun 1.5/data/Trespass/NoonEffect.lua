function onCreatePost()
	makeLuaSprite('NoonEffect', 'Bambi/NoonEffect', 0, 0)
	addLuaSprite('NoonEffect',true)
	setObjectCamera('NoonEffect', 'camgame')
	setProperty('NoonEffect.scale.x', 12.5);
    setProperty('NoonEffect.scale.y', 12.5);
	setProperty('NoonEffect.alpha', 0.7)
	setProperty('DayBG.alpha', 0)
	setProperty('NoonBG.alpha', 1)

end

function onUpdate(elapsed)

	if curStep == 1268 then
		doTweenAlpha('TurningNoon', 'NoonEffect', 0, 20)
	end

end