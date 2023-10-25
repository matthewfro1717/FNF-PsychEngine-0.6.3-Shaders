function onCreatePost()
	makeLuaSprite('MorningEffect', 'Bambi/MorningEffect', 0, 0)
	addLuaSprite('MorningEffect',true)
	setObjectCamera('MorningEffect', 'camgame')
	setProperty('MorningEffect.scale.x', 12.5);
    setProperty('MorningEffect.scale.y', 12.5);
	setProperty('MorningEffect.alpha', 0)
	setProperty('MorningBG.alpha', 1)
	setObjectOrder('MorningEffect', getObjectOrder('fornfarm') + 1)

end

function onUpdate(elapsed)

	if curStep == 1104 then
		doTweenAlpha('TurningMorning', 'MorningEffect', 0.7, 60)
	end

	if curStep == 2132 then
		doTweenAlpha('TurningDay', 'MorningEffect', 0, 35)
		doTweenAlpha('TurningDay2', 'DayBG', 1, 35)
	end

end