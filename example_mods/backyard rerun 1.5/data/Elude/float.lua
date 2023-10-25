function onCreate()
	function onUpdate(elapsed)
		songPos = getSongPosition()
		local currentBeat = (songPos/5000)*(curBpm/120)
		getCharacterX('dad')
		getCharacterY('dad')
    getCharacterX('bf')
		getCharacterY('bf')
    getCharacterX('gf')
		getCharacterY('gf')
    
    songPos = getSongPosition()

    local currentBeat = (songPos/1000)*(bpm/80)

    doTweenY(dadTweenY, 'dad', 38-69*math.sin((currentBeat*0.25)*math.pi),0.01)
  end
end