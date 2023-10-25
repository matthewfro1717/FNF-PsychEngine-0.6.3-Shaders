function onCreatePost()
	makeLuaSprite('NoonEffect', 'Bambi/NoonEffect', 0, 0)
	addLuaSprite('NoonEffect',true)
	setObjectCamera('NoonEffect', 'camgame')
	setProperty('NoonEffect.scale.x', 12.5);
    setProperty('NoonEffect.scale.y', 12.5);
	setProperty('NoonEffect.alpha', 0.7)

end

function onUpdate(elapsed)

	if curStep == 1183 then
		doTweenAlpha('TurningNoon', 'NoonEffect', 0, 20)
	end

	doTweenY('sunset', 'sun', 100, 95)
	doTweenColor('sunsetcolor', 'sun', 'ff2600', 60000000000000)

end