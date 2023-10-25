function onUpdate(elapsed)
  songPos = getSongPosition()

  local currentBeat = (songPos/1000)*(bpm/80)

  if curStep >= 1296 then
    doTweenY(dadTweenY, 'dad', 300-125*math.sin((currentBeat*0.25)*math.pi),0.01)
  end
  
end