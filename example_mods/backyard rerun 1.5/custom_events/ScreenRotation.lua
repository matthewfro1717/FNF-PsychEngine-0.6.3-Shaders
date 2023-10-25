function onEvent(n,v1,v2)

	if n == "ScreenRotation" then

		doTweenAngle('spinbitchgame', 'camGame', v1, 0.1, 'circOut')
		doTweenAngle('spinbitchhud', 'camHUD', v2, 0.1, 'circOut')
		
	end
	
end
