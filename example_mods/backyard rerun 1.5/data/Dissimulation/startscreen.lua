function onCreate()
    makeLuaSprite('fade','darknesss', 0, 0);
    setProperty('fade.scale.x', 12.5);
    setProperty('fade.scale.y', 12.5);
    addLuaSprite('fade', false);
    setObjectCamera('fade', 'other')
    setProperty('camHUD.alpha', 0)

end

function onCreatePost()
    for i = 0, 3 do
        setPropertyFromGroup('opponentStrums', i, 'visible', false)
    end
    for i = 0, 3 do
        setPropertyFromGroup('playerStrums', i, 'visible', false)
    end

end

function onSongStart()
    doTweenAlpha('fadein', 'fade', 0, 3, 'cubeIn')
    doTweenAlpha('hudfadein', 'camHUD', 1, 3, 'cubeIn')

end

function onStepHit()
    if curStep == 64 then
        cameraFlash('hud', 'FFFFFF', 2)
        for i = 0, 3 do
            setPropertyFromGroup('opponentStrums', i, 'visible', true)
        end
    end

    if curStep == 96 then
        cameraFlash('hud', 'FFFFFF', 2)
        for i = 0, 3 do
            setPropertyFromGroup('playerStrums', i, 'visible', true)
        end
    end

    if curStep == 2848 then
        cameraFade('hud', '000000', 4.56)
    end

end
