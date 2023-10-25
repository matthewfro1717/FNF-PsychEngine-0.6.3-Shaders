function onCreate()
	makeLuaSprite('bg1','Expunged/Chained1', -2100, -1100)
    addLuaSprite('bg1',false)
    setLuaSpriteScrollFactor('bg1', 1, 1);
	addGlitchEffect('bg1', 2, 5, 0.1)
    scaleObject('bg1', 2.3, 2.3)
    setProperty('bg1.visible', true)

	makeLuaSprite('bg2','Expunged/Chained2', -2100, -1100)
    addLuaSprite('bg2',false)
    setLuaSpriteScrollFactor('bg2', 1, 1);
	addGlitchEffect('bg2', 2, 5, 0.1)
    scaleObject('bg2', 2.3, 2.3)
    setProperty('bg2.visible', false)
	
	makeLuaSprite('bg3','Expunged/CreepyRoom', -2100, -1100)
    addLuaSprite('bg3',false)
    setLuaSpriteScrollFactor('bg3', 1, 1);
	addGlitchEffect('bg3', 2, 5, 0.1)
    scaleObject('bg3', 2.3, 2.3)
    setProperty('bg3.visible', false)

	makeLuaSprite('bg4','Expunged/NoIdea', -2100, -1100)
    addLuaSprite('bg4',false)
    setLuaSpriteScrollFactor('bg4', 1, 1);
	addGlitchEffect('bg4', 2, 5, 0.1)
    scaleObject('bg4', 2.3, 2.3)
    setProperty('bg4.visible', false)
	
end

function onUpdate(elapsed)
    if curStep == 1280 then
        setProperty('bg1.visible', false);
        setProperty('bg2.visible', true);
        cameraFlash('hud', '000000', 1, true);
    end
    if curStep == 1792 then
        setProperty('bg2.visible', false);
        setProperty('bg3.visible', true);
        cameraFlash('hud', '000000', 1, true);
    end
    if curStep == 2688 then
        setProperty('bg3.visible', false);
        setProperty('bg4.visible', true);
        cameraFlash('hud', '000000', 1, true);
    end
end