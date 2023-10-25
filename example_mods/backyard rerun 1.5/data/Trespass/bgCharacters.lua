function onCreate()

	makeAnimatedLuaSprite('bgTristan','bambi/splitathon/TristanOnGroundWhatHeDo', 1260, 480);
	addAnimationByPrefix('bgTristan','Idle','sitting0', 24, true);
    addAnimationByPrefix('bgTristan','IdleAlt','SuprisedMF0', 24, true);
	objectPlayAnimation('bgTristan','Idle', false)
	setScrollFactor('bgTristan', 1, 1);
    setProperty('bgTristan.scale.x', 0.9);
    setProperty('bgTristan.scale.y', 0.9);
	addLuaSprite('bgTristan', true);

	makeAnimatedLuaSprite('bgDave','bambi/virtuoso/dave-background', 1460, 500);
	addAnimationByPrefix('bgDave','Idle','idle no mic0', 24, true);
	objectPlayAnimation('bgDave','Idle', false);
	setScrollFactor('bgDave', 1, 1);
	addLuaSprite('bgDave', true);
    setProperty('bgDave.flipX', true);

	makeAnimatedLuaSprite('crowd', 'bambi/virtuoso/crowd', -50, 45)
	addAnimationByPrefix('crowd','Idle','crowdDance0', 24, true);
	objectPlayAnimation('crowd','Idle', false);
	setScrollFactor('crowd', 1, 1);
	addLuaSprite('crowd', false);
end