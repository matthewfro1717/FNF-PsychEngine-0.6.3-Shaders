function onEvent(n,v1,v2)

	if n == "Grayscale Effect" then
		if v1 == "1" then
			cameraFlash('camGame', 'FFFFFF', 0.15);
			addGreyscaleEffect('game');
			addScanlineEffect('game');
		elseif v1 == "0" then
			clearEffects('game');
			clearShadersFromCamera('game');
			cameraFlash('camGame', 'FFFFFF', 0.15);
		end
	end
end
