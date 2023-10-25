function onCreate()

	makeAnimatedLuaSprite('bgDave','characters/Splitathon_Dave', -50, 280);
	addAnimationByPrefix('bgDave','Idle','happy0', 24, true);
    addAnimationByPrefix('bgDave','IdleAlt','bruh0', 24, true);
	objectPlayAnimation('bgDave','Idle', false);
	setScrollFactor('bgDave', 1, 1);
	addLuaSprite('bgDave', false);
	setProperty('bgDave.visible', false)

    makeAnimatedLuaSprite('bgBambi','characters/Splitathon_Bambi', 50, 675);
	addAnimationByPrefix('bgBambi','Idle','splitathon idle 20', 24, true);
    addAnimationByPrefix('bgBambi','IdleAlt','splitathon corn0', 24, true);
	objectPlayAnimation('bgBambi','Idle', false)
	setScrollFactor('bgBambi', 1, 1);
	addLuaSprite('bgBambi', true);
	setProperty('bgBambi.visible', true)

    makeAnimatedLuaSprite('bgTristan','bambi/splitathon/TristanOnGroundWhatHeDo', 1260, 480);
	addAnimationByPrefix('bgTristan','Idle','sitting0', 24, true);
    addAnimationByPrefix('bgTristan','IdleAlt','SuprisedMF0', 24, true);
	objectPlayAnimation('bgTristan','Idle', false)
	setScrollFactor('bgTristan', 1, 1);
    setProperty('bgTristan.scale.x', 0.9);
    setProperty('bgTristan.scale.y', 0.9);
	addLuaSprite('bgTristan', false);
	setProperty('bgTristan.visible', true)

    makeAnimatedLuaSprite('bgMoldy','characters/moldygh', 999, 180);
	addAnimationByPrefix('bgMoldy','Idle','Idle0', 24, true);
	objectPlayAnimation('bgMoldy','Idle', false);
    setProperty('bgMoldy.flipX', true)
	setScrollFactor('bgMoldy', 1, 1);
	addLuaSprite('bgMoldy', false);
	setProperty('bgMoldy.visible', false)

end

function onStepHit()

    if curStep == 1512 then
        setProperty('bgDave.visible', true)
        setProperty('bgTristan.visible', false)
    end

    if curStep == 3464 then
        setProperty('bgBambi.visible', false)
        setProperty('bgTristan.visible', true)
    end

    if curStep == 5552 then
        setProperty('bgDave.visible', false)
        setProperty('bgBambi.visible', true)
        objectPlayAnimation('bgBambi','IdleAlt', false)
    end

    if curStep == 7570 then
        setProperty('bgDave.visible', true)
        setProperty('bgTristan.visible', false)
    end

    if curStep == 8544 then
        setProperty('bgBambi.visible', false)
        setProperty('bgTristan.visible', true)
    end

    if curStep == 10772 then
        setProperty('bgDave.visible', false)
        setProperty('bgBambi.visible', true)
        objectPlayAnimation('bgBambi','Idle', false)
    end

    if curStep == 12015 then
        setProperty('bgDave.visible', true)
        objectPlayAnimation('bgDave','IdleAlt', false)
        objectPlayAnimation('bgTristan','IdleAlt', false)
    end

    if curStep == 15553 then
        objectPlayAnimation('bgDave','Idle', false)
        setProperty('bgBambi.visible', false)
        objectPlayAnimation('bgTristan','Idle', false)
        setProperty('bgMoldy.visible', true)
        doTweenAlpha('bgMoldyDissapear', 'bgMoldy', 0, 358, cubeIn)
    end

    if curStep == 17232 then
        setProperty('bgDave.visible', false)
        setProperty('bgBambi.visible', true)
        objectPlayAnimation('bgBambi','IdleAlt', false)
    end

    if curStep == 17377 then --tristan
        setProperty('bgTristan.visible', false)
    end

    if curStep == 18420 then
        setProperty('bgDave.visible', true)
        setProperty('bgBambi.visible', false)
        setProperty('bgTristan.visible', true)
    end

    if curStep == 19047 then
        setProperty('bgDave.visible', false)
        setProperty('bgBambi.visible', true)
        objectPlayAnimation('bgBambi','IdleAlt', false)
    end

end