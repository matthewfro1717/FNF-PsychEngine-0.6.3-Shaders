function onUpdatePost()

	if curStep == 300 then
		triggerEvent('Change Character', '1', '3D_Dave');
		setProperty('RedSky.alpha', 1)
		playSound('static', 1)
		setProperty('NightEffect.visible', false)
		setProperty('NoonEffect.visible', false)
	end
	if curStep == 303 then
		triggerEvent('Change Character', '1', 'InsanityDave');
		setProperty('RedSky.alpha', 0)
		setProperty('NightEffect.visible', true)
		setProperty('NoonEffect.visible', true)
	end
	if curStep == 320 then
		triggerEvent('Play Animation', 'um', 'Dad')
	end
	if curStep == 438 then
		triggerEvent('Change Character', '1', '3D_Dave');
		setProperty('RedSky.alpha', 1)
		playSound('static', 1)
		setProperty('NightEffect.visible', false)
		setProperty('NoonEffect.visible', false)
	end
	if curStep == 441 then
		triggerEvent('Change Character', 'dad', 'InsanityDave')
		setProperty('RedSky.alpha', 0)
		setProperty('NightEffect.visible', true)
		setProperty('NoonEffect.visible', true)
	end
	if curStep == 448 then
		triggerEvent('Play Animation', 'um', 'Dad')
	end
	if curStep == 937 then
		triggerEvent('Change Character', 'dad', '3D_Dave');
		setProperty('RedSky.alpha', 1)
		playSound('static', 1)
		setProperty('NightEffect.visible', false)
		setProperty('NoonEffect.visible', false)
	end
	if curStep == 940 then
		triggerEvent('Change Character', 'dad', 'InsanityDave')
		setProperty('RedSky.alpha', 0)
		setProperty('NightEffect.visible', true)
		setProperty('NoonEffect.visible', true)
	end
	if curStep == 1407 then
		triggerEvent('Change Character', 'dad', '3D_Dave');
		setProperty('RedSky.alpha', 1)
		playSound('static', 1)
		setProperty('NightEffect.visible', false)
		setProperty('NoonEffect.visible', false)
	end
	if curStep == 1410 then
		triggerEvent('Change Character', 'dad', 'InsanityDave')
		triggerEvent('Play Animation', 'scared', 'Dad')
	end
end