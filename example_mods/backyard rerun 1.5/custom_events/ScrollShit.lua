function onEvent(name, value1, value2)
    if name == 'ScrollShit' then
        local isDownScroll = tonumber(value1) == 1
        local dir = -90
        local strumY = 50
        if isDownScroll then
            dir = -dir
            strumY = getPropertyFromClass('flixel.FlxG', 'height') - 150
        end

        local tweenSpeed = crochet / 1000;
        for i = 0, getProperty('strumLineNotes.length') - 1, 1 do
            setPropertyFromGroup('strumLineNotes', i, 'downScroll', isDownScroll)
            setPropertyFromGroup('strumLineNotes', i, 'angle', dir * 2)
            noteTweenY('noteScroll' .. i, i, strumY, tweenSpeed, 'quartOut')
            noteTweenAngle('noteAngle' .. i, i, 0, tweenSpeed, 'quartOut')
        end

        for i = 0, getProperty('unspawnNotes.length') - 1 do
            if getPropertyFromGroup('unspawnNotes', i, 'isSustainNote') then
                setPropertyFromGroup('unspawnNotes', i, 'flipY', isDownScroll)
            end
        end
    end
end
