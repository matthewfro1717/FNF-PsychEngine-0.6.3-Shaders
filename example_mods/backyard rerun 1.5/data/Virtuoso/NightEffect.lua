function onCreatePost()
	makeLuaSprite('NightEffect', 'Bambi/NightEffect', 0, 0)
	addLuaSprite('NightEffect',true)
	setObjectCamera('NightEffect', 'camgame')
	setProperty('NightEffect.scale.x', 12.5);
    setProperty('NightEffect.scale.y', 12.5);
	setProperty('NightEffect.alpha', 0.7)
	setProperty('NightBG.alpha', 1)
	setObjectOrder('NightEffect', getObjectOrder('fornfarm') + 1)

end

function onUpdate(elapsed)

	if curStep == 1104 then
		doTweenAlpha('TurningawayNight', 'NightEffect', 0, 80)
		doTweenAlpha('TurningawayNight2', 'NightBG', 0, 80)
	end
end