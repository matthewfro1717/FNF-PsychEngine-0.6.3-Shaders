function onCreatePost()
	makeLuaSprite('NightEffect', 'Bambi/NightEffect', 0, 0)
	addLuaSprite('NightEffect',true)
	setObjectCamera('NightEffect', 'camgame')
	setProperty('NightEffect.scale.x', 12.5);
    setProperty('NightEffect.scale.y', 12.5);
	setProperty('NightEffect.alpha', 0.6)

end

function onUpdate(elapsed)

	if curStep == 3535 then	
		doTweenAlpha('TurningDay', 'NightEffect', 0, 288.82)
		doTweenAlpha('TurningDay2', 'NightBG', 0, 288.82)
	end

end