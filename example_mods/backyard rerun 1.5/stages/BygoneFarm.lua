function onCreate()

	makeLuaSprite('NoonBG','bambi/noon',-608,-500)
	addLuaSprite('NoonBG',false)
	setLuaSpriteScrollFactor('NoonBG', 0.1, 0.1)

	makeLuaSprite('NightBG','bambi/stars', -680,-500)
	addLuaSprite('NightBG',false)
	setLuaSpriteScrollFactor('NightBG', 0.1, 0.1)
	setProperty('NightBG.alpha', 0)

	makeLuaSprite('sun','1.0bg/sun', -450, -321)
	addLuaSprite('sun',false)
	setLuaSpriteScrollFactor('sun', 0.1, 0.1)

	makeLuaSprite('flatgrass','1.0bg/gm_flatgrass', -555, -370)
	addLuaSprite('flatgrass',false)
	setLuaSpriteScrollFactor('flatgrass', 0.3, 0.3)
	setProperty('flatgrass.scale.x', 0.5);
    setProperty('flatgrass.scale.y', 0.5);

	makeLuaSprite('background','1.0bg/background', -450, -250)
	addLuaSprite('background',false)
	setLuaSpriteScrollFactor('background', 0.3, 0.3)

	makeLuaSprite('farm','1.0bg/farm', -450, -225)
	addLuaSprite('farm',false)
	setLuaSpriteScrollFactor('farm', 0.6, 0.6)

	makeLuaSprite('corn','1.0bg/corn', -450, 0)
	addLuaSprite('corn',false)
	setLuaSpriteScrollFactor('corn', 1, 1)
	
	makeLuaSprite('foreground','1.0bg/foreground', -380, -125)
	addLuaSprite('foreground',false)
	setLuaSpriteScrollFactor('foreground', 1, 1)
	setProperty('foreground.scale.x', 2);

	makeLuaSprite('sign','1.0bg/Sign', -666, 50)
	addLuaSprite('sign',false)
	setLuaSpriteScrollFactor('sign', 1, 1)

	

	close(true);
end