function onCreate()
	makeLuaSprite('NoonBG','bambi/noon',-608,-500)
	addLuaSprite('NoonBG',false)
	setScrollFactor('NoonBG', 0.1, 0.1)
	setProperty('NoonBG.alpha', 1)

	makeLuaSprite('NightBG','bambi/stars', -608,-500)
	addLuaSprite('NightBG',false)
	setScrollFactor('NightBG', 0.1, 0.1)
	setProperty('NightBG.alpha', 0)

	makeLuaSprite('flatgrass','bambi/gm_flatgrass', -55, -150)
	addLuaSprite('flatgrass',false)
	setScrollFactor('flatgrass', 0.3, 0.3)
	setProperty('flatgrass.scale.x', 0.3);
    setProperty('flatgrass.scale.y', 0.3);

	makeLuaSprite('hills','bambi/orangey hills', -220, 5)
	addLuaSprite('hills',false)
	setScrollFactor('hills', 0.3, 0.3)

	makeLuaSprite('farm','bambi/funfarmhouse', 69, 85)
	addLuaSprite('farm',false)
	setScrollFactor('farm', 0.6, 0.6)

	makeLuaSprite('ground','bambi/grass lands', -480, 480)
	addLuaSprite('ground',false)
	setScrollFactor('ground', 1, 1)

	makeLuaSprite('ragebg','bambi/enragedNew', -800, -400)
    addLuaSprite('ragebg',false)
    setScrollFactor('ragebg', 1, 1);
	addGlitchEffect('ragebg', 2, 5, 0.1)
    scaleObject('ragebg', 1.3, 1.3)
	setProperty('ragebg.visible', false)

	makeLuaSprite('corn1','bambi/cornFence', -280, 180)
	addLuaSprite('corn1',false)
	setScrollFactor('corn1', 1, 1)

	makeLuaSprite('corn2','bambi/cornFence2', 1220, 200)
	addLuaSprite('corn2',false)
	setScrollFactor('corn2', 1, 1)

	makeLuaSprite('sign','bambi/Sign', 125, 340)
	addLuaSprite('sign',false)
	setScrollFactor('sign', 1, 1)

	makeLuaSprite('cornbag','bambi/cornbag', 1320, 550)
	addLuaSprite('cornbag',false)
	setScrollFactor('cornbag', 1, 1)

end

function onUpdate(elapsed)

	songPos = getSongPosition()
	local currentBeat = (songPos/5000)*(curBpm/120)
	
    if curStep == 1296 then
        setProperty('ragebg.visible', true);
        setProperty('NoonBG.visible', false);
        setProperty('NightBG.visible', false);
		setProperty('flatgrass.visible', false);
		setProperty('hills.visible', false);
		setProperty('farm.visible', false);
		setProperty('ground.visible', false);
		setProperty('corn1.visible', false);
		setProperty('corn2.visible', false);
		setProperty('sign.visible', false);
		setProperty('cornbag.visible', false);
		triggerEvent('Set Property', 'defaultCamZoom', '0.6');
		setCharacterX('dad', 415)
		setCharacterY('dad', 200)
		setCharacterX('bf', 1200)
		setCharacterY('bf', 130)
  		setCharacterX('gf', 800)
	  	setCharacterY('gf', 130)
    end
end
