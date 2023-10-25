function onCreatePost()
	makeLuaSprite('NightEffect', 'Bambi/NightEffect', 0, 0)
	addLuaSprite('NightEffect',true)
	setObjectCamera('NightEffect', 'camgame')
	setProperty('NightEffect.scale.x', 12.5);
    setProperty('NightEffect.scale.y', 12.5);
	setProperty('NightEffect.alpha', 0.6)
	
	makeLuaSprite('lights', 'dave/house/lights', -785, -690)
	addLuaSprite('lights',false)
	setObjectCamera('lights', 'camgame')
	setProperty('lights.scale.x', 0.85);
	setProperty('lights.scale.y', 0.85);
end