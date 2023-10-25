function onCreate()
    makeAnimatedLuaSprite('bg1','Recursed/darkroombg', -0, -200)
    addAnimationByPrefix('bg1','wind','windblow0', 15, true);
	objectPlayAnimation('bg1','wind', true);
    addLuaSprite('bg1',false)
    setLuaSpriteScrollFactor('bg1', 1, 1);
    setProperty('bg1.scale.x', 5);
    setProperty('bg1.scale.y', 2);
	
end