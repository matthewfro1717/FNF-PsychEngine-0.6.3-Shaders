local GfX = 0
local GfY = 15
local GfOfs = 25
local cameraMoving = true
local enableSystem = true
local ofs = 25

function RGBToHexConverter(array)
	return string.format('%.2x%.2x%.2x', array[1], array[2], array[3])
end

color = 421717
function onCreate()
    addCharacterToList('Frontyard_Pre-Walk_Dave', 'boyfriend')
    doTweenAlpha('byenerd2', 'dad', 0, 0.1)
    doTweenAlpha('byenerd3', 'gf', 0, 0.1)
    doTweenAlpha('byenerd4', 'BG', 0, 0.1)
    doTweenAlpha('byenerd5', 'iconP2', 0, 0.1)
    setHealthBarColors(color, RGBToHexConverter(getProperty("boyfriend.healthColorArray")))

    if dadName == '1.5LeakExpunged' then
        if gfName == 'HelliusExpungius' then
            runHaxeCode([[game.iconP2.changeIcon('idtios');]])
        end
    end
    if seenCutscene then
        doTweenAlpha('byenerd1', 'camHUD', 0, 0.1)
        allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onUpdate(elapsed)
    if enableSystem == true then
        if mustHitSection == false then
            if gfSection == true then
                -- The camera follows GF when she sings, only when the "GF Section" option in the chart editor is activated. 
                GfX = getMidpointX('gf') + getProperty('gf.cameraPosition[0]') + getProperty('girlfriendCameraOffset[0]')
                GfY = getMidpointY('gf') + getProperty('gf.cameraPosition[1]') + getProperty('girlfriendCameraOffset[1]')
                if getProperty('gf.animation.curAnim.name') == 'singLEFT' or getProperty('gf.animation.curAnim.name') == 'singLEFT-alt' then
                    triggerEvent('Camera Follow Pos',GfX-ofs,GfOfs)
                        
                elseif getProperty('gf.animation.curAnim.name') == 'singRIGHT' or getProperty('gf.animation.curAnim.name') == 'singRIGHT-alt' then
                    triggerEvent('Camera Follow Pos',GfX+ofs,GfOfs)
                        
                 elseif getProperty('gf.animation.curAnim.name') == 'singUP' or getProperty('gf.animation.curAnim.name') == 'singUP-alt' then
                    triggerEvent('Camera Follow Pos',GfX,GfY-GfOfs)
                        
                elseif getProperty('gf.animation.curAnim.name') == 'singDOWN' or getProperty('gf.animation.curAnim.name') == 'singDOWN-alt' then
                    triggerEvent('Camera Follow Pos',GfX,GfY+GfOfs)
                        
                else
                    triggerEvent('Camera Follow Pos',GfX,GfY)
                end
            end
        else
            triggerEvent('Camera Follow Pos')
        end
    end

    if curStep == 240 then
        doTweenAlpha('hinerd1', 'camHUD', 1, 1, 'cubeOut')
        doTweenAlpha('hinerd2', 'dad', 1, 1, 'cubeOut')
        doTweenAlpha('hinerd3', 'gf', 1, 1, 'cubeOut')
        doTweenAlpha('hinerd4', 'BG', 1, 1, 'cubeOut')
        doTweenAlpha('hinerd5', 'iconP2', 1, 1)
    end

    if curStep == 1290 then
        triggerEvent('Play Animation', 'shoot', 'GF')
    end

    if curStep == 1300 then
        setProperty('boyfriend.visible', false)
    end

    if curStep == 1440 then
        triggerEvent('Change Character', 'bf', 'Frontyard_Pre-Walk_Dave')
        setProperty('boyfriend.visible', true)
    end
    if curStep == 1792 then
        triggerEvent('Change Character', 'bf', 'Frontyard_Pre-Walk_Dave-Static')
        setProperty('boyfriend.visible', true)
    end
    if curStep == 1920 then
        triggerEvent('Change Character', 'bf', 'Frontyard_Pre-Walk_Dave')
        setProperty('boyfriend.visible', true)
    end
    if curStep == 2560 then
        triggerEvent('Change Character', 'bf', 'Frontyard_Pre-Walk_Dave-Static')
        setProperty('boyfriend.visible', true)
    end
end