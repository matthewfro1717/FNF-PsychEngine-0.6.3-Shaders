function onCreate()

	makeLuaSprite('MainBG','Exbungo/Exbongo', -800, -500)
    addLuaSprite('MainBG',false)
    setLuaSpriteScrollFactor('MainBG', 1, 1);
	addGlitchEffect('MainBG', 2, 5, 0.1)
    scaleObject('MainBG', 1.3, 1.3)

    makeLuaSprite('Circle','Exbungo/Circle', -250, 550)
    addLuaSprite('Circle',false)
    setLuaSpriteScrollFactor('Circle', 1, 1);
    
    makeLuaSprite('Place','Exbungo/Place', 700, -50)
    addLuaSprite('Place',false)
    setLuaSpriteScrollFactor('Place', 1, 1);
end

function onUpdate()
    songPos = getSongPosition()
    local currentBeat = (songPos/1000)*(bpm/80)
    doTweenY('plcaing', 'Place', -50+50*math.sin((currentBeat*0.25)*math.pi),0.01)
end