function onCreatePost()
	makeLuaSprite('TextDarkEffect', 'Bambi/NightEffect', 0, 0)
	addLuaSprite('TextDarkEffect',true)
	setObjectCamera('TextDarkEffect', 'camgame')
	setProperty('TextDarkEffect.scale.x', 12.5);
    setProperty('TextDarkEffect.scale.y', 12.5);
	setProperty('TextDarkEffect.alpha', 0)

end

function onUpdate(elapsed)

    if curStep == 1935 then
		doTweenAlpha('DarkTextAppear', 'TextDarkEffect', 0.8, 0.7)
        doTweenZoom('DarkTextZoomIn', 'camGame', 1.5, 0.7)
		setProperty('NoonEffect.visible', false)
		setProperty('NightEffect.visible', false)
		setProperty('MorningEffect.visible', false)
	end
    if curStep == 2035 then
		doTweenAlpha('DarkTextdisAppear', 'TextDarkEffect', 0, 0.7)
        doTweenZoom('DarkTextZoomOut', 'camGame', 0.8, 0.7)
		setProperty('NoonEffect.visible', true)
		setProperty('NightEffect.visible', true)
		setProperty('MorningEffect.visible', true)
	end
end