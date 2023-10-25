function onCreate()
    makeLuaSprite('DarkEffect', 'Bambi/NightEffect', 0, 0)
	addLuaSprite('DarkEffect', true)
	setObjectCamera('DarkEffect', 'camgame')
	setProperty('DarkEffect.scale.x', 12.5);
    setProperty('DarkEffect.scale.y', 12.5);
    setProperty('DarkEffect.visible', false)

    makeLuaSprite('guitartbg','bambi/virtuoso/ch_highway', 450, -580)
	setLuaSpriteScrollFactor('guitartbg', 1, 1)
    addLuaSprite('guitartbg', true)
    setProperty('guitartbg.visible', false)
    setObjectCamera('hud')
    scaleObject('guitartbg', 2, 2)

    makeLuaSprite('bambispot','bambi/virtuoso/bambi_spot', -10, 30)
	setLuaSpriteScrollFactor('bambispot', 1, 1)
    addLuaSprite('bambispot', true)
    setProperty('bambispot.visible', false)
    scaleObject('bambispot', 1.7, 1.7)

    makeLuaSprite('bFspot','bambi/virtuoso/boyfriend_spot', 1500, 450)
	setLuaSpriteScrollFactor('bFspot', 1, 1)
    addLuaSprite('bFspot', true)
    setProperty('bFspot.visible', false)
    scaleObject('bFspot', 1.7, 1.7)
    setProperty('bFspot.visible', false)
end

function onUpdate(elapsed)
    if curStep == 902 then
        noteTweenAlpha('bye1', 0, 0, 0.58, 'quartInOut')
        noteTweenAlpha('bye2', 1, 0, 0.58, 'quartInOut')
        noteTweenAlpha('bye3', 2, 0, 0.58, 'quartInOut')
        noteTweenAlpha('bye4', 3, 0, 0.58, 'quartInOut')
    end
    if curStep == 912 then
        noteTweenAlpha('hu1', 0, 1, 0.1, 'quartInOut')
        noteTweenAlpha('hu2', 1, 1, 0.1, 'quartInOut')
        noteTweenAlpha('hu3', 2, 1, 0.1, 'quartInOut')
        noteTweenAlpha('hu4', 3, 1, 0.1, 'quartInOut')
        noteTweenAlpha('bye5', 4, 0, 0.01, 'quartInOut')
        noteTweenAlpha('bye6', 5, 0, 0.01, 'quartInOut')
        noteTweenAlpha('bye7', 6, 0, 0.01, 'quartInOut')
        noteTweenAlpha('bye8', 7, 0, 0.01, 'quartInOut')
        scaleObject('dadGroup', 0.9, 0.9)
        scaleObject('boyfriendGroup', 0.9, 0.9)
        cameraFlash('game', 'FFFFFF', 1)
        setProperty('DarkEffect.visible', true)
        setProperty('guitartbg.visible', true)
        setProperty('bambispot.visible', true)
        setObjectOrder('boyfriendGroup', getObjectOrder('bFspot')+1)
        setObjectOrder('dadGroup', getObjectOrder('bambispot')+1)
        doTweenAlpha('bfhdiefornow', 'boyfriendGroup', 0, 0.1, 'quartInOut')
        removeLuaScript('scripts/CamNotePressMovement')
        triggerEvent('Camera Follow Pos', 1000, 440)
        setCharacterX('dad', 95)
        setCharacterY('dad', -430)
        setCharacterX('boyfriend', 1530)
        setCharacterY('boyfriend', -80)
        for i = 0, 4 do
            setPropertyFromGroup('playerStrums', i, 'x', 507 + (112 * (i - 1)))
            setPropertyFromGroup('opponentStrums', i, 'x', 507 + (112 * (i - 1)))
        end
    end

    if curStep == 1295 then
        noteTweenAlpha('byee1', 0, 0.25, 0.1, 'quartInOut')
        noteTweenAlpha('byee2', 1, 0.25, 0.1, 'quartInOut')
        noteTweenAlpha('byee3', 2, 0.25, 0.1, 'quartInOut')
        noteTweenAlpha('byee4', 3, 0.25, 0.1, 'quartInOut')
        noteTweenAlpha('hii5', 4, 1, 0.1, 'quartInOut')
        noteTweenAlpha('hii6', 5, 1, 0.1, 'quartInOut')
        noteTweenAlpha('hii7', 6, 1, 0.1, 'quartInOut')
        noteTweenAlpha('hii8', 7, 1, 0.1, 'quartInOut')
        doTweenAlpha('bfbadefornow', 'boyfriendGroup', 1, 0.3, 'quartInOut')
        setProperty('bFspot.visible', true)
    end

    if curStep == 1808 then
        setProperty('DarkEffect.visible', false)
        setProperty('guitartbg.visible', false)
        setProperty('bambispot.visible', false)
        setProperty('bFspot.visible', false)
        setProperty('DarkEffect.visible', false)
        cameraFlash('hud', 'FFFFFF', 1)
        scaleObject('dadGroup', 1, 1)
        scaleObject('boyfriendGroup', 1, 1)
        setCharacterX('dad', 555)
        setCharacterY('dad', 150)
        setCharacterX('boyfriend', 1188)
        setCharacterY('boyfriend', 90)
        setObjectOrder('boyfriendGroup', getObjectOrder('dadGroup')+1)
        setObjectOrder('dadGroup', getObjectOrder('gfGroup')+1)
        addLuaScript('scripts/CamNotePressMovement')
        triggerEvent('Camera Follow Pos')
        cameraSetTarget('dad')
        noteTweenAlpha('hiey1', 0, 1, 0.1, 'quartInOut')
        noteTweenAlpha('hiey2', 1, 1, 0.1, 'quartInOut')
        noteTweenAlpha('hiey3', 2, 1, 0.1, 'quartInOut')
        noteTweenAlpha('hiey4', 3, 1, 0.1, 'quartInOut')
        for i = 0, 4 do
            setPropertyFromGroup('playerStrums', i, 'x', defaultPlayerStrumX1 + (112 * (i - 1)))
            setPropertyFromGroup('opponentStrums', i, 'x', defaultOpponentStrumX1 + (112 * (i - 1)))
        end
    end
end