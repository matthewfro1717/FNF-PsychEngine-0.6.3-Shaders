function onCreate()

    makeAnimatedLuaSprite('bgPlaybot','characters/playbot', 1600, 100);
	addAnimationByPrefix('bgPlaybot','Idle','idle instance 10', 24, true);
	objectPlayAnimation('bgPlaybot','Idle', false);
	setScrollFactor('bgPlaybot', 1, 1);
	addLuaSprite('bgPlaybot', true);
    setProperty('bgPlaybot.flipX', true);

    makeAnimatedLuaSprite('bgTristan','bambi/splitathon/TristanOnGroundWhatHeDo', 1800, 400);
	addAnimationByPrefix('bgTristan','Idle','sitting0', 24, true);
    addAnimationByPrefix('bgTristan','IdleAlt','SuprisedMF0', 24, true);
	objectPlayAnimation('bgTristan','Idle', false)
	setScrollFactor('bgTristan', 1, 1);
    setProperty('bgTristan.scale.x', 0.9);
    setProperty('bgTristan.scale.y', 0.9);
	addLuaSprite('bgTristan', true);

	makeAnimatedLuaSprite('bgDave','bambi/virtuoso/dave-background', 1980, 500);
	addAnimationByPrefix('bgDave','Idle','idle no mic0', 24, true);
	objectPlayAnimation('bgDave','Idle', false);
	setScrollFactor('bgDave', 1, 1);
	addLuaSprite('bgDave', true);
    setProperty('bgDave.flipX', true);

    makeAnimatedLuaSprite('bgMoldy','characters/moldygh', -450, 300);
	addAnimationByPrefix('bgMoldy','Idle','Idle0', 24, true);
	objectPlayAnimation('bgMoldy','Idle', false);
	setScrollFactor('bgMoldy', 1, 1);
	addLuaSprite('bgMoldy', false);

    makeAnimatedLuaSprite('bgTB','characters/TB_FunnyMan', 0, 450);
	addAnimationByPrefix('bgTB','Idle','idle0', 8, true);
	objectPlayAnimation('bgTB','Idle', false);
	setScrollFactor('bgTB', 1, 1);
	addLuaSprite('bgTB', false);

	makeLuaSprite('balod','bambi/virtuoso/baldo', -150, 480)
	addLuaSprite('balod',false)
	setLuaSpriteScrollFactor('balod', 1, 1)
    setObjectOrder('balod', getObjectOrder('HayBales') - 1)

end

function onStepHit()

    if curStep == 910 then

        objectPlayAnimation('bgTristan','IdleAlt', false)
    
    end

    if curStep == 1808 then

        objectPlayAnimation('bgTristan','Idle', false)
    
    end

end