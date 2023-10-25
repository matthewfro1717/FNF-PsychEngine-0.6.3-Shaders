function onCreate()

	makeAnimatedLuaSprite('bgDave','characters/Splitathon_Dave', 111, 300);
	addAnimationByPrefix('bgDave','Idle','happy0', 24, true);
	objectPlayAnimation('bgDave','Idle', false);
	setScrollFactor('bgDave', 1, 1);
	addLuaSprite('bgDave', false);
	setProperty('bgDave.visible', false)

    makeAnimatedLuaSprite('bgBambi','characters/Splitathon_Bambi', 200, 500);
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

end

function onStepHit()

    if curStep == 3535 then

        setProperty('bgDave.visible', true)
        setProperty('bgBambi.visible', false)
        objectPlayAnimation('bgTristan','IdleAlt', false)
        
    end

    if curStep == 5662 then
        setProperty('bgDave.visible', false)
        setProperty('bgBambi.visible', true)
        objectPlayAnimation('bgBambi','IdleAlt', false)
        objectPlayAnimation('bgTristan','Idle', false)
    end

    if curStep == 7631 then
        setProperty('bgDave.visible', true)
        setProperty('bgBambi.visible', false)
        objectPlayAnimation('bgTristan','IdleAlt', false)
    end

end