function onCreatePost()
	makeLuaSprite('NoonEffect', 'Bambi/NoonEffect', 0, 0)
	addLuaSprite('NoonEffect',true)
	setObjectCamera('NoonEffect', 'camgame')
	setProperty('NoonEffect.scale.x', 12.5);
    setProperty('NoonEffect.scale.y', 12.5);
	setProperty('NoonEffect.alpha', 0.7)

end

function onUpdate(elapsed)

	if curStep == 600 then
		doTweenAlpha('TurningNoon', 'NoonEffect', 0.0, 10)
	end
	if curStep == 1296 then
		doTweenAlpha('TurningNight', 'NoonEffect', 0, 1)
		doTweenAlpha('TurningNight2', 'NoonBG', 0, 1)
	end
end