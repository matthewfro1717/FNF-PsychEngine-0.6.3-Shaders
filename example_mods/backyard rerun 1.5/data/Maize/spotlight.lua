function onCreate()
    makeLuaSprite('DarkEffect', 'Bambi/NightEffect', 0, 0)
	addLuaSprite('DarkEffect', true)
	setObjectCamera('DarkEffect', 'camgame')
	setProperty('DarkEffect.scale.x', 12.5);
    setProperty('DarkEffect.scale.y', 12.5);
    setProperty('DarkEffect.visible', false)

    makeLuaSprite('spotlight','bambi/spotlight', 400, -222)
	setLuaSpriteScrollFactor('spotlight', 1, 1)
    addLuaSprite('spotlight', true)
    setObjectOrder('spotlight', getObjectOrder('DarkEffect') + 500)
    setProperty('spotlight.visible', false)
end

function onUpdate(elapsed)
    if curStep == 928 then
        setProperty('spotlight.visible', true)   
        cameraFlash('hud', 'FFFFFF', 1)
        setProperty('DarkEffect.visible', true)
        setObjectOrder('dadGroup', getObjectOrder('DarkEffect') + 1)
        setProperty('NoonEffect.visible', false)
    end
    if curStep == 1191 then
        setProperty('spotlight.visible', false)
        setProperty('DarkEffect.visible', false)
        cameraFlash('hud', 'FFFFFF', 1)
        setProperty('NoonEffect.visible', true)
    end
end

function onMoveCamera(focus)
    if focus == 'boyfriend' then
        doTweenX('spotlightMoveToBF', 'spotlight', 800, 1, 'smootherStepInOut')
        cancelTween('spotlightMoveToDad')
        runTimer('waitforchange1', 0.67)
        runTimer('waitforback1', 0.35)
    end
    if focus == 'dad' then --What the fuck is wrong with this, It's fucking 8 pm and I've been messing with this fucking shit for the past 5 HOURS (make it 6). 23/01/2023 -CMarkV
        doTweenX('spotlightMoveToDad', 'spotlight', 300, 1, 'smootherStepInOut')
        cancelTween('spotlightMoveToBF')
        runTimer('waitforchange2', 0.67)
        runTimer('waitforback2', 0.35)
    end
end

function onTimerCompleted(tag)
    if tag == 'waitforchange1' then
        setObjectOrder('boyfriendGroup', getObjectOrder('spotlight') - 1)
        setObjectOrder('boyfriendGroup', getObjectOrder('DarkEffect') + 1)
    end

    if tag == 'waitforchange2' then
        setObjectOrder('dadGroup', getObjectOrder('spotlight') - 1)
        setObjectOrder('dadGroup', getObjectOrder('DarkEffect') + 1)
    end

    if tag == 'waitforback1' then
        setObjectOrder('dadGroup', getObjectOrder('DarkEffect') - 1)
    end

    if tag == 'waitforback2' then
        setObjectOrder('boyfriendGroup', getObjectOrder('DarkEffect') - 1)
    end

    if curStep == 1808 then
        return Function_Stop;
    end
end