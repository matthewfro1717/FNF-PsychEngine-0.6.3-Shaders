camShake = false;
function onEvent(n,v1,v2)

	if n == "Eyesores" then
		if v1 == "1" then
			camShake = true;
			if flashingLights then
				addPulseEffect('game', 1, 1, 2);
			end
		elseif v1 == "0" then
			clearEffects('game');
			clearShadersFromCamera('game');
			camShake = false;
			if flashingLights then
				cameraFlash('camGame', 'FFFFFF', 0.15);
			end
		end
	end
end

function onUpdatePost(elapsed)
	if camShake then
		cameraShake('camGame', 0.015, 0.015);
		playAnim('gf', 'scared');
	end
end
