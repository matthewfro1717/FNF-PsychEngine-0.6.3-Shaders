function onUpdate(elapsed)
  songPos = getSongPosition()

  local currentBeat = (songPos/1000)*(bpm/80)

  doTweenY(dadTweenY, 'dad', 0-69*math.sin((currentBeat*0.25)*math.pi),0.01)
  
end