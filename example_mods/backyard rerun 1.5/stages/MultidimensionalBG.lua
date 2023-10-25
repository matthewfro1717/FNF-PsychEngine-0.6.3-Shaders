function onCreate()

	makeLuaSprite('DayBG','bambi/sky',-608,-500)
	addLuaSprite('DayBG',false)
	setScrollFactor('DayBG', 0.1, 0.1)

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

	makeLuaSprite('bg1','RedSkyBG', -800, -500)
    addLuaSprite('bg1',false)
    setScrollFactor('bg1', 1, 1);
	addGlitchEffect('bg1', 2, 5, 0.1)
    scaleObject('bg1', 1.3, 1.3)
	setProperty('bg1.visible', true)

	makeLuaSprite('bg2','dave/multidimentional/Trippy', -800, -500)
    addLuaSprite('bg2',false)
    setScrollFactor('bg2', 1, 1);
	addGlitchEffect('bg2', 2, 5, 0.1)
    scaleObject('bg2', 1.3, 1.3)
	setProperty('bg2.visible', false)

	makeLuaSprite('bg3','dave/multidimentional/PIlls', -800, -500)
    addLuaSprite('bg3',false)
    setScrollFactor('bg3', 1, 1);
	addGlitchEffect('bg3', 2, 5, 0.1)
    scaleObject('bg3', 1.3, 1.3)
	setProperty('bg3.visible', false)

	makeLuaSprite('bg4','dave/multidimentional/Tubed', -800, -500)
    addLuaSprite('bg4',false)
    setScrollFactor('bg4', 1, 1);
	addGlitchEffect('bg4', 2, 5, 0.1)
    scaleObject('bg4', 1.3, 1.3)
	setProperty('bg4.visible', false)

	makeLuaSprite('bg5','dave/multidimentional/DarkBlue', -800, -500)
    addLuaSprite('bg5',false)
    setScrollFactor('bg5', 1, 1);
	addGlitchEffect('bg5', 2, 5, 0.1)
    scaleObject('bg5', 1.3, 1.3)
	setProperty('bg5.visible', false)
end

function onUpdate(elapsed)
	if curStep == 1024 then
		cameraFlash('game', 'FFFFFF', 1)
		setProperty('bg1.visible', false)
		setProperty('bg2.visible', true)
	end
	if curStep == 1536 then
		cameraFlash('game', 'FFFFFF', 1)
		setProperty('bg2.visible', false)
		setProperty('bg3.visible', true)
	end
	if curStep == 2048 then
		cameraFlash('game', 'FFFFFF', 1)
		setProperty('bg3.visible', false)
		setProperty('bg4.visible', true)
	end
	if curStep == 2560 then
		cameraFlash('game', 'FFFFFF', 1)
		setProperty('bg4.visible', false)
		setProperty('bg5.visible', true)
	end
	if curStep == 2943 then
		cameraFlash('game', 'FFFFFF', 1)
		setProperty('bg5.visible', false)
		setProperty('bg2.visible', true)
	end

	if curStep == 3224 then
		cameraFlash('game', 'FFFFFF', 1)
		setProperty('bg2.visible', false)
	end
end