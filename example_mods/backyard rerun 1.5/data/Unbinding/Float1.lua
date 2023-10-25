function onUpdate(elapsed)
  songPos = getSongPosition()
  local currentBeat = (songPos/5000)*(bpm/60)

  if curStep >= 128 then
    doTweenY('MoveA', 'dad', -25 - 100*math.sin((currentBeat+28*28)*math.pi), 1)
  end
  if curStep == 128 then
    cameraFlash('game', 'FFFFFF', 1, false)
  end

  if curStep >= 384 then
    cancelTween('MoveA');
    doTweenX('MoveB', 'dad', -700 - 250*math.cos((currentBeat+22*22)*math.pi), 2)
    doTweenY('MoveC', 'dad', 0 - 200*math.sin((currentBeat+28*28)*math.pi), 1)
  end
  if curStep == 384 then
    cameraFlash('game', 'FFFFFF', 1, false)
  end

  if curStep >= 768 then
    cancelTween('MoveB');
    cancelTween('MoveC');
    doTweenX('MoveD', 'dad', -700 - 350*math.cos((currentBeat+22*22)*math.pi), 1)
    doTweenY('MoveE', 'dad', 150 - 300*math.cos((currentBeat+28*28)*math.pi), 2)
  end
  if curStep == 768 then
    cameraFlash('game', 'FFFFFF', 1, false)
  end

  if curStep >= 1151 then
    cancelTween('MoveD');
    cancelTween('MoveE');
    doTweenY('MoveF', 'dad', 50 - 400*math.sin((currentBeat+28*28)*math.pi), 1)
    setCharacterX('dad', -315);
  end
  if curStep == 1151 then
    cameraFlash('game', 'FFFFFF', 1, false)
  end
end