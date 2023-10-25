function onCreate()

    makeAnimatedLuaSprite('bgBambi','characters/CoolBambi', 530, 500)
    addAnimationByPrefix('bgBambi','Idlenull', 'idle0', 18, false)

    addAnimationByPrefix('bgBambi','FuckYouLoser', 'hey0', 24, false)

	addLuaSprite('bgBambi', false)

	setScrollFactor('bgBambi', 1, 1)
    
    setCharacterX('gf', 753)
    setCharacterY('bf', 145)

end

function onSongStart()
    addAnimationByPrefix('bgBambi','Idle','idle0', 18, true)
    playAnim('bgBambi','Idle', true)
end

function noteMiss()
    setProperty('bgBambi.offset.x',-26)
    playAnim('bgBambi','FuckYouLoser', false)


    ezTimer('idle0', 1, function()
        setProperty('bgBambi.offset.x',0)
        playAnim('bgBambi','Idle', true)
    end) 
end

timers = {}
function ezTimer(tag, timer, callback) -- Better
    table.insert(timers,{tag, callback})
    runTimer(tag, timer)
end

function onTimerCompleted(tag)
    for k,v in pairs(timers) do
        if v[1] == tag then
            v[2]()
        end
    end
end