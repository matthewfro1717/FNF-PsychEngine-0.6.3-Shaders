function onUpdate(elapsed)
	if curStep >= 1151 then
		songPos = getSongPosition()
		local currentBeat = (songPos/5000)*(curBpm/24)

		noteTweenY('PlayerStrumY0', 4, defaultPlayerStrumY0 + (math.cos((currentBeat) + 0) * 25), 0.05)
		noteTweenY('PlayerStrumY1', 5, defaultPlayerStrumY1 + (math.cos((currentBeat) + 1) * 25), 0.05)
		noteTweenY('PlayerStrumY2', 6, defaultPlayerStrumY2 + (math.cos((currentBeat) + 2) * 25), 0.05)
		noteTweenY('PlayerStrumY3', 7, defaultPlayerStrumY3 + (math.cos((currentBeat) + 3) * 25), 0.05)
		noteTweenY('OpponentStrumY0', 0, defaultOpponentStrumY0 + (math.cos((currentBeat) + 0) * 25), 0.05)
		noteTweenY('OpponentStrumY1', 1, defaultOpponentStrumY1 + (math.cos((currentBeat) + 1) * 25), 0.05)
		noteTweenY('OpponentStrumY2', 2, defaultOpponentStrumY2 + (math.cos((currentBeat) + 2) * 25), 0.05)
		noteTweenY('OpponentStrumY3', 3, defaultOpponentStrumY3 + (math.cos((currentBeat) + 3) * 25), 0.05)

		noteTweenAngle('PlayerStrum0', 4, (math.cos((currentBeat) + 2) * 25), 0.05)
		noteTweenAngle('PlayerStrum1', 5, (math.cos((currentBeat) + 3) * 25), 0.05)
		noteTweenAngle('PlayerStrum2', 6, (math.cos((currentBeat) + 4) * 25), 0.05)
		noteTweenAngle('PlayerStrum3', 7, (math.cos((currentBeat) + 5) * 25), 0.05)
		noteTweenAngle('OpponentStrum0', 0, (math.cos((currentBeat) + 2) * 25), 0.05)
		noteTweenAngle('OpponentStrum1', 1, (math.cos((currentBeat) + 3) * 25), 0.05)
		noteTweenAngle('OpponentStrum2', 2, (math.cos((currentBeat) + 4) * 25), 0.05)
		noteTweenAngle('OpponentStrum3', 3, (math.cos((currentBeat) + 5) * 25), 0.05)
	end	
end