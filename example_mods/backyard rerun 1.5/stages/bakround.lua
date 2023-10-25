function onCreate()
	makeLuaSprite('BG','Expunged/Tin-Can/bakround',-108,-100)
	addLuaSprite('BG',false)
	setLuaSpriteScrollFactor('BG', 1, 1)
	scaleObject('BG', 1.5, 1.5)
	
	setObjectOrder('gfGroup', getObjectOrder('dadGroup')+1)
	setObjectOrder('bfGroup', getObjectOrder('gfGroup')+1)
end