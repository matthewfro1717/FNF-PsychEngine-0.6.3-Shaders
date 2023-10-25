function onEvent(name, value1, value2)
    if name == 'Lyrics' then
        setTextString('lyric', value1)
        setTextColor('lyric', value2)
        setTextFont('lyric', 'comic-sans-ms.ttf')
    end
end

function onCreate()
    if getPropertyFromClass('ClientPrefs', 'downScroll') then
        makeLuaText('lyric', '', screenWidth, 0, 155)
        addLuaText('lyric')
        setTextSize('lyric', 40)
    elseif getPropertyFromClass('ClientPrefs', 'UpScroll') then
        makeLuaText('lyric', '', screenWidth, 0, 545)
        addLuaText('lyric')
        setTextSize('lyric', 40)
    end
end