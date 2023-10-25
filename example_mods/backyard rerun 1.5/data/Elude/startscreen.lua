function onCreate()
    makeLuaSprite('fade','darknesss', 0, 0);
    setProperty('fade.scale.x', 12.5);
    setProperty('fade.scale.y', 12.5);
    addLuaSprite('fade', false);
    setObjectCamera('fade', 'hud')
    
end

function onSongStart()
    doTweenAlpha('fadein', 'fade', 0, 8.4, 'cubeIn')
end

function onStepHit()
    if curStep == 2880 then
        cameraFade('hud', '000000', 4.8)
    end
end
