function onCreate()
	
	makeLuaSprite('DayBG','bambi/sky',-608,-500)
	addLuaSprite('DayBG',false)
	setLuaSpriteScrollFactor('DayBG', 0.1, 0.1)

	makeLuaSprite('Background','PCIG/background', -660, -666)
	addLuaSprite('Background',false)
	setLuaSpriteScrollFactor('Background', 1, 1)

	makeLuaSprite('Trees','PCIG/trees', -660, -666)
	addLuaSprite('Trees',false)
	setLuaSpriteScrollFactor('Trees', 1, 1)

	makeLuaSprite('Leaves','PCIG/leaves', -660, -666)
	addLuaSprite('Leaves',false)
	setLuaSpriteScrollFactor('Leaves', 1, 1)

	makeLuaSprite('Bush2','PCIG/bush_middle', -660, -666)
	addLuaSprite('Bush2',false)
	setLuaSpriteScrollFactor('Bush2', 1, 1)

	makeLuaSprite('grass','PCIG/grass', -660, -666)
	addLuaSprite('grass',false)
	setLuaSpriteScrollFactor('grass', 1, 1)
	--setProperty('grass.scale.x', 0.8);

	makeLuaSprite('MoldyPhone','PCIG/Phone', 1044, 777)
	addLuaSprite('MoldyPhone',false)
	setLuaSpriteScrollFactor('MoldyPhone', 1, 1)

	makeLuaSprite('Bush1','PCIG/bush_bottom', -660, -666)
	addLuaSprite('Bush1', true)
	setLuaSpriteScrollFactor('Bush1', 1, 1)
	--setObjectOrder('Bush1', getObjectOrder('dadgroup')+1)
	

	close(true);
end