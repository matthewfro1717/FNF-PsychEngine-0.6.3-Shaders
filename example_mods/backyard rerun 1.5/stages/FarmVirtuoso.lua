function onCreate()

	makeLuaSprite('MorningBG','bambi/Morning',-608,-500)
	addLuaSprite('MorningBG',false)
	setLuaSpriteScrollFactor('MorningBG', 0.1, 0.1)
	setProperty('MorningBG.alpha', 0)

	makeLuaSprite('DayBG','bambi/sky',-608,-500)
	addLuaSprite('DayBG',false)
	setLuaSpriteScrollFactor('DayBG', 0.1, 0.1)
	setProperty('DayBG.alpha', 0)

	makeLuaSprite('NoonBG','bambi/noon',-608,-500)
	addLuaSprite('NoonBG',false)
	setLuaSpriteScrollFactor('NoonBG', 0.1, 0.1)
	setProperty('NoonBG.alpha', 0)

	makeLuaSprite('NightBG','bambi/stars', -608,-500)
	addLuaSprite('NightBG',false)
	setLuaSpriteScrollFactor('NightBG', 0.1, 0.1)
	setProperty('NightBG.alpha', 1)

	makeLuaSprite('fornfarm','bambi/virtuoso/CornysFront', -450, -430)
	addLuaSprite('fornfarm',false)
	setLuaSpriteScrollFactor('fornfarm', 1, 1)

	makeLuaSprite('Barn','bambi/virtuoso/Barninside', -2050, -500)
	addLuaSprite('Barn',false)
	setLuaSpriteScrollFactor('Barn', 1, 1)
	setProperty('Barn.scale.x', 0.7);
    setProperty('Barn.scale.y', 0.7);

	makeLuaSprite('HayBale','bambi/virtuoso/HayBale', 1650, 350)
	addLuaSprite('HayBale',true)
	setLuaSpriteScrollFactor('HayBale', 1, 1)
	setProperty('HayBale.scale.x', 0.8);
	setProperty('HayBale.scale.y', 0.8);

	makeLuaSprite('HayBales','bambi/virtuoso/HayBales2', -450, 350)
	addLuaSprite('HayBales',true)
	setLuaSpriteScrollFactor('HayBales', 1, 1)
	setProperty('HayBales.scale.x', 0.8);
	setProperty('HayBales.scale.y', 0.8);

	makeAnimatedLuaSprite('lights', 'bambi/virtuoso/cornGlow', -450, -150)
	addAnimationByPrefix('lights','Idle','idle0', 4, true);
	objectPlayAnimation('lights','Idle', false);
	setScrollFactor('lights', 1, 1);
	addLuaSprite('lights', false);

	makeAnimatedLuaSprite('crowd', 'bambi/virtuoso/crowd', -50, 0)
	addAnimationByPrefix('crowd','Idle','crowdDance0', 24, true);
	objectPlayAnimation('crowd','Idle', false);
	setScrollFactor('crowd', 1, 1);
	addLuaSprite('crowd', false);

	makeAnimatedLuaSprite('glow', 'bambi/virtuoso/generalGlow', -450, 550)
	addAnimationByPrefix('glow','Idle','idle0', 6, true);
	objectPlayAnimation('glow','Idle', false);
	setScrollFactor('glow', 1, 1);
	addLuaSprite('glow', false);

end
