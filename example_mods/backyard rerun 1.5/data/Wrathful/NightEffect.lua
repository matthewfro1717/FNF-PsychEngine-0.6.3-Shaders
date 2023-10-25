function onCreatePost()
	makeLuaSprite('NightEffect', 'Bambi/NightEffect', 0, 0)
	addLuaSprite('NightEffect',true)
	setObjectCamera('NightEffect', 'camgame')
	setProperty('NightEffect.scale.x', 12.5);
    setProperty('NightEffect.scale.y', 12.5);
	setProperty('NightEffect.alpha', 0)

end

function onUpdate(elapsed)
	if curStep == 600 then
		doTweenAlpha('TurningNight', 'NightEffect', 0.7, 20.5)
		doTweenAlpha('TurningNight2', 'NightBG', 1, 20.5)
	end
	if curStep >= 1296 then
		setProperty('NightEffect.alpha', 0)
		setProperty('NightBG.alpha', 0)
	end

end