function onCreate()

	makeLuaSprite('bg','RedSkyBG', -800, -500)
    addLuaSprite('bg',false)
    setLuaSpriteScrollFactor('bg', 1, 1);
	addGlitchEffect('bg', 2, 5, 0.1)
    scaleObject('bg', 1.3, 1.3)
	

	close(true);
end