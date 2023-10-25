function onUpdate(elapsed)
  
  songPos = getSongPosition()
  
  local currentBeat = (songPos/5000)*(bpm/60)
  
  
  doTweenX('opponentmovex', 'dad', -444 - 2222*math.cos((currentBeat+25*25)*math.pi), 5)
  doTweenY('opponentmovey', 'dad', -111 - 333*math.sin((currentBeat+22*22)*math.pi), 1)

end
  