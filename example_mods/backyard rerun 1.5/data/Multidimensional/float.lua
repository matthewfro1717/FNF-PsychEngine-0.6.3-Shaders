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
    addCharacterToList('nothing', 'dad')
    
    songPos = getSongPosition()

    local currentBeat = (songPos/1000)*(bpm/80)

    doTweenY(dadTweenY, 'dad', 0-69*math.sin((currentBeat*0.25)*math.pi),0.01)

    if curStep == 3224 then
      cancelTween(dadTweenY)
      triggerEvent('Change Character', '1', 'nothing');
      setProperty('bg.alpha', 0)
      playSound('static', 1)
      cameraFlash('hud', 'FFFFFF', 1, true)
      cameraSetTarget('bf')
      setCharacterX('dad', 460)
      setCharacterY('dad', 150)
      setCharacterX('bf', 888)
      setCharacterY('bf', 90)
      setCharacterX('gf', 530)
      setCharacterY('gf', 130)
      for i = 0, 3 do
        setPropertyFromGroup('opponentStrums', i, 'visible', false)
      end
      for i = 0, 3 do
        setPropertyFromGroup('playerStrums', i, 'visible', false)
      end 
    end 


  end

  if curStep == 960 then
    setProperty('defaultCamZoom', 0.8)
  end
  if curStep == 975 then
    setProperty('defaultCamZoom', 0.9)
  end
  if curStep == 992 then
    setProperty('defaultCamZoom', 1.0)
  end
  if curStep == 1007 then
    setProperty('defaultCamZoom', 1.1)
  end
  if curStep == 1024 then
    setProperty('defaultCamZoom', 0.7)
  end
end