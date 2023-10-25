local window_corner = {}
local window_center = {320, 150}

local up = -120
local down = 120

local left = -120
local right = 120

function onCreatePost()
    local songPos = getPropertyFromClass('Conductor', 'songPosition') / 1000
	window_corner[1] = getPropertyFromClass("openfl.Lib", "application.window.x")
	window_corner[2] = getPropertyFromClass("openfl.Lib", "application.window.y")
	getPropertyFromClass('openfl.Lib','application.window.fullscreen')
	setPropertyFromClass('openfl.Lib', 'application.window.title', 'You Messed Up Now');
	
	addHaxeLibrary('Lib', 'openfl')
	addHaxeLibrary('FlxG', 'flixel')
end

function onSongStart()
	setPropertyFromClass('openfl.Lib','application.window.fullscreen', true)
	doTweenWindow("x", window_center[1], 0.4, "expoOut")
	doTweenWindow("y", window_center[2], 0.4, "expoOut")
end

function onDestroy()
	setPropertyFromClass('openfl.Lib', 'application.window.title', 'Dave And Bambi: Backyard Re-Run v1.5');
	setPropertyFromClass('openfl.Lib','application.window.fullscreen', false)
	doTweenWindow("x", window_center[1], 0.4, "expoOut")
	doTweenWindow("y", window_center[2], 0.4, "expoOut")
end

function onStepHit()
	if curStep == 32 then
		setPropertyFromClass('openfl.Lib','application.window.fullscreen', false)
	end
	if curStep == 64 then
		setPropertyFromClass('openfl.Lib','application.window.fullscreen', true)
	end
	if curStep == 112 then
		setPropertyFromClass('openfl.Lib','application.window.fullscreen', false)
	end
	if curStep == 116 then
		setPropertyFromClass('openfl.Lib','application.window.fullscreen', true)
	end
	if curStep == 120 then
		setPropertyFromClass('openfl.Lib','application.window.fullscreen', false)
	end

	if curStep == 256 then
		doTweenWindow("y", window_corner[2] + -150, 0.4, "expoOut")
	end
	if curStep == 262 then
		doTweenWindow("y", window_corner[2] + 150, 0.4, "expoOut")
	end
	if curStep == 267 then
		doTweenWindow("y", window_corner[2] + -150, 0.4, "expoOut")
	end
	if curStep == 272 then
		doTweenWindow("x", window_corner[1] + -320, 0.4, "expoOut")
		doTweenWindow("y", window_center[2], 0.4, "expoOut")
	end
	if curStep == 278 then
		doTweenWindow("x", window_corner[1] + 320, 0.4, "expoOut")
	end
	if curStep == 284 then
		doTweenWindow("x", window_corner[1] + -320, 0.4, "expoOut")
	end
	if curStep == 288 then
		doTweenWindow("x", window_corner[1] + 320, 0.4, "expoOut")
	end
	if curStep == 294 then
		doTweenWindow("x", window_corner[1] + -320, 0.4, "expoOut")
	end
	if curStep == 300 then
		doTweenWindow("x", window_corner[1] + 320, 0.4, "expoOut")
	end
	if curStep == 304 then
		doTweenWindow("y", window_corner[2] + -150, 0.4, "expoOut")
	end
	if curStep == 308 then
		doTweenWindow("x", window_corner[1] + -320, 0.4, "expoOut")
	end
	if curStep == 312 then
		doTweenWindow("x", window_center[1], 0.4, "expoOut")
		doTweenWindow("y", window_center[2], 0.4, "expoOut")
	end

	if curStep == 320 then
		doTweenWindow("y", window_corner[2] + -150, 0.4, "expoOut")
	end
	if curStep == 326 then
		doTweenWindow("y", window_corner[2] + 150, 0.4, "expoOut")
	end
	if curStep == 332 then
		doTweenWindow("y", window_corner[2] + -150, 0.4, "expoOut")
	end
	if curStep == 336 then
		doTweenWindow("x", window_corner[1] + -320, 0.4, "expoOut")
		doTweenWindow("y", window_center[2], 0.4, "expoOut")
	end
	if curStep == 342 then
		doTweenWindow("x", window_corner[1] + 320, 0.4, "expoOut")
	end
	if curStep == 358 then
		doTweenWindow("x", window_center[1], 0.4, "expoOut")
		doTweenWindow("y", window_center[2], 0.4, "expoOut")
	end
	if curStep == 351 then
		doTweenWindow("x", window_corner[1] + 320, 0.4, "expoOut")
		doTweenWindow("y", window_corner[2] + -150, 0.4, "expoOut")
	end
	if curStep == 358 then
		doTweenWindow("x", window_corner[1] + -320, 0.4, "expoOut")
		doTweenWindow("y", window_corner[2] + 150, 0.4, "expoOut")
	end
	if curStep == 364 then
		doTweenWindow("x", window_corner[1] + 320, 0.4, "expoOut")
		doTweenWindow("y", window_corner[2] + -150, 0.4, "expoOut")
	end
	if curStep == 368 then
		doTweenWindow("x", window_corner[1] + 320, 0.4, "expoOut")
		doTweenWindow("y", window_corner[2] + 150, 0.4, "expoOut")
	end
	if curStep == 374 then
		doTweenWindow("x", window_corner[1] + -320, 0.4, "expoOut")
		doTweenWindow("y", window_corner[2] + -150, 0.4, "expoOut")
	end
	if curStep == 379 then
		doTweenWindow("x", window_center[1], 0.4, "expoOut")
		doTweenWindow("y", window_center[2], 0.4, "expoOut")
	end

	if curStep == 640 then
		setPropertyFromClass("openfl.Lib", "application.window.width", 1260)
		setPropertyFromClass("openfl.Lib", "application.window.height", 710)
	end
	if curStep == 642 then
		setPropertyFromClass("openfl.Lib", "application.window.width", 1240)
		setPropertyFromClass("openfl.Lib", "application.window.height", 700)
	end
	if curStep == 644 then
		setPropertyFromClass("openfl.Lib", "application.window.width", 1220)
		setPropertyFromClass("openfl.Lib", "application.window.height", 690)
	end
	if curStep == 646 then
		setPropertyFromClass("openfl.Lib", "application.window.width", 1200)
		setPropertyFromClass("openfl.Lib", "application.window.height", 680)
	end
	if curStep == 648 then
		setPropertyFromClass("openfl.Lib", "application.window.width", 1180)
		setPropertyFromClass("openfl.Lib", "application.window.height", 670)
	end
	if curStep == 650 then
		setPropertyFromClass("openfl.Lib", "application.window.width", 1160)
		setPropertyFromClass("openfl.Lib", "application.window.height", 660)
	end
	if curStep == 652 then
		setPropertyFromClass("openfl.Lib", "application.window.width", 1140)
		setPropertyFromClass("openfl.Lib", "application.window.height", 650)
	end
	if curStep == 654 then
		setPropertyFromClass("openfl.Lib", "application.window.width", 1120)
		setPropertyFromClass("openfl.Lib", "application.window.height", 640)
	end
	if curStep == 656 then
		setPropertyFromClass("openfl.Lib", "application.window.width", 1100)
		setPropertyFromClass("openfl.Lib", "application.window.height", 630)
	end
	if curStep == 658 then
		setPropertyFromClass("openfl.Lib", "application.window.width", 1080)
		setPropertyFromClass("openfl.Lib", "application.window.height", 620)
	end
	if curStep == 660 then
		setPropertyFromClass("openfl.Lib", "application.window.width", 1060)
		setPropertyFromClass("openfl.Lib", "application.window.height", 610)
	end
	if curStep == 662 then
		setPropertyFromClass("openfl.Lib", "application.window.width", 1040)
		setPropertyFromClass("openfl.Lib", "application.window.height", 600)
	end
	if curStep == 694 then
		setPropertyFromClass("openfl.Lib", "application.window.width", 1280)
		setPropertyFromClass("openfl.Lib", "application.window.height", 720)
	end
	if curStep == 692 then
		setPropertyFromClass("openfl.Lib", "application.window.width", 1260)
		setPropertyFromClass("openfl.Lib", "application.window.height", 710)
	end
	if curStep == 690 then
		setPropertyFromClass("openfl.Lib", "application.window.width", 1240)
		setPropertyFromClass("openfl.Lib", "application.window.height", 700)
	end
	if curStep == 688 then
		setPropertyFromClass("openfl.Lib", "application.window.width", 1220)
		setPropertyFromClass("openfl.Lib", "application.window.height", 690)
	end
	if curStep == 686 then
		setPropertyFromClass("openfl.Lib", "application.window.width", 1210)
		setPropertyFromClass("openfl.Lib", "application.window.height", 680)
	end
	if curStep == 684 then
		setPropertyFromClass("openfl.Lib", "application.window.width", 1180)
		setPropertyFromClass("openfl.Lib", "application.window.height", 670)
	end
	if curStep == 682 then
		setPropertyFromClass("openfl.Lib", "application.window.width", 1160)
		setPropertyFromClass("openfl.Lib", "application.window.height", 660)
	end
	if curStep == 680 then
		setPropertyFromClass("openfl.Lib", "application.window.width", 1140)
		setPropertyFromClass("openfl.Lib", "application.window.height", 650)
	end
	if curStep == 678 then
		setPropertyFromClass("openfl.Lib", "application.window.width", 1120)
		setPropertyFromClass("openfl.Lib", "application.window.height", 640)
	end
	if curStep == 676 then
		setPropertyFromClass("openfl.Lib", "application.window.width", 1100)
		setPropertyFromClass("openfl.Lib", "application.window.height", 630)
	end
	if curStep == 674 then
		setPropertyFromClass("openfl.Lib", "application.window.width", 1080)
		setPropertyFromClass("openfl.Lib", "application.window.height", 620)
	end
	if curStep == 672 then
		setPropertyFromClass("openfl.Lib", "application.window.width", 1060)
		setPropertyFromClass("openfl.Lib", "application.window.height", 610)
	end
	if curStep == 1242 then
		setPropertyFromClass('openfl.Lib','application.window.frameRate', 10)
	end
	if curStep == 1460 then
		setPropertyFromClass('openfl.Lib','application.window.frameRate', 20)
	end
	if curStep == 1462 then
		setPropertyFromClass('openfl.Lib','application.window.frameRate', 40)
	end
	if curStep == 1464 then
		setPropertyFromClass('openfl.Lib','application.window.frameRate', 80)
	end
	if curStep == 1466 then
		setPropertyFromClass('openfl.Lib','application.window.frameRate', 120)
	end
	if curStep == 1468 then
		setPropertyFromClass('openfl.Lib','application.window.frameRate', 240)
	end
end

function doTweenWindow(var,value,duration,ease)
	runHaxeCode([[FlxTween.tween(Lib.application.window, {]]..var..[[: ]]..value..[[}, ]]..duration..[[, {ease: FlxEase.]]..ease..[[});]])
end
