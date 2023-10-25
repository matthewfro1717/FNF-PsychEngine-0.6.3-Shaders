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

		if dadName == '3D_Dave' then
			setCharacterX('dad', 115)
			setCharacterY('dad', 200)
      setCharacterX('bf', 1200)
			setCharacterY('bf', 130)
      setCharacterX('gf', 800)
		  setCharacterY('gf', 130)
      doTweenY(dadTweenY, 'dad', 0-69*math.sin((currentBeat*0.25)*math.pi),0.01)
      cameraSetTarget('dad')
		end

    if curStep == 1936 then
      cancelTween(dadTweenY)
      triggerEvent('Change Character', '1', 'Dave');
      setProperty('bg.alpha', 0);
      cameraFlash('hud', 'FFFFFF', 1, true)
      setCharacterX('dad', 315)
      setCharacterY('dad', 200)
      setCharacterX('bf', 980)
      setCharacterY('bf', 130)
      setCharacterX('gf', 530)
      setCharacterY('gf', 130)
      cameraSetTarget('dad')
    end 


  end
end