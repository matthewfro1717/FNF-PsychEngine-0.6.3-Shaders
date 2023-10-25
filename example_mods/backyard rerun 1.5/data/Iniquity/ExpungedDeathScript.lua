function onCreate()
    if songName == 'Elude' or 'Iniquity' or 'Deploration' then
        precacheSound('CheaterCheaterPumpkinEater/ByeBye')
        precacheSound('CheaterCheaterPumpkinEater/FuckingIdiot')
        precacheSound('CheaterCheaterPumpkinEater/Goback')
        precacheSound('CheaterCheaterPumpkinEater/Laugh')
        precacheSound('CheaterCheaterPumpkinEater/Nevercomebackagain')
        setPropertyFromClass('GameOverSubstate', 'characterName', 'Nothing');
        setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'silence');
        setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'silence');
        setPropertyFromClass('GameOverSubstate', 'endSoundName', 'silence');
    end
      
end

function onGameOver()
    if songName == 'Elude' or 'Iniquity' or 'Deploration' then
        randomValue = getRandomInt(1, 5)
            if randomValue == 1 then
                playSound('CheaterCheaterPumpkinEater/ByeBye', 1, 'ByeBye')
                if getPropertyFromClass('ClientPrefs', 'downScroll') then
                    makeLuaText('lyric', 'Bye Bye!', screenWidth, 0, 155)
                    addLuaText('lyric')
                    setTextSize('lyric', 40)
                elseif getPropertyFromClass('ClientPrefs', 'UpScroll') then
                    makeLuaText('lyric', 'Bye Bye!', screenWidth, 0, 545)
                    addLuaText('lyric')
                    setTextSize('lyric', 40)
                end
            elseif randomValue == 2 then
                playSound('CheaterCheaterPumpkinEater/FuckingIdiot', 1, 'FuckingIdiot')
                if getPropertyFromClass('ClientPrefs', 'downScroll') then
                    makeLuaText('lyric', 'Fucking Idiot.', screenWidth, 0, 155)
                    addLuaText('lyric')
                    setTextSize('lyric', 40)
                elseif getPropertyFromClass('ClientPrefs', 'UpScroll') then
                    makeLuaText('lyric', 'Fucking Idiot.', screenWidth, 0, 545)
                    addLuaText('lyric')
                    setTextSize('lyric', 40)
                end
            elseif randomValue == 3 then
                playSound('CheaterCheaterPumpkinEater/Goback', 1, 'Goback')
                if getPropertyFromClass('ClientPrefs', 'downScroll') then
                    makeLuaText('lyric', 'Go Back!', screenWidth, 0, 155)
                    addLuaText('lyric')
                    setTextSize('lyric', 40)
                elseif getPropertyFromClass('ClientPrefs', 'UpScroll') then
                    makeLuaText('lyric', 'Go Back!', screenWidth, 0, 545)
                    addLuaText('lyric')
                    setTextSize('lyric', 40)
                end
            elseif randomValue == 4 then
                playSound('CheaterCheaterPumpkinEater/Laugh', 1, 'Laugh')
                if getPropertyFromClass('ClientPrefs', 'downScroll') then
                    makeLuaText('lyric', '*Laughing*', screenWidth, 0, 155)
                    addLuaText('lyric')
                    setTextSize('lyric', 40)
                elseif getPropertyFromClass('ClientPrefs', 'UpScroll') then
                    makeLuaText('lyric', '*Laughing*', screenWidth, 0, 545)
                    addLuaText('lyric')
                    setTextSize('lyric', 40)
                end
            elseif randomValue == 5 then
                playSound('CheaterCheaterPumpkinEater/Nevercomebackagain', 1, 'Nevercomebackagain')
                if getPropertyFromClass('ClientPrefs', 'downScroll') then
                    makeLuaText('lyric', 'Never Come Back Again.', screenWidth, 0, 155)
                    addLuaText('lyric')
                    setTextSize('lyric', 40)
                elseif getPropertyFromClass('ClientPrefs', 'UpScroll') then
                    makeLuaText('lyric', 'Never Come Back Again.', screenWidth, 0, 545)
                    addLuaText('lyric')
                    setTextSize('lyric', 40)
                end
            end
    end
    return Function_Continue
end

function onSoundFinished(tag)
    if tag == 'byebye' or 'FuckingIdiot' or 'Goback' or 'Laugh' or 'Nevercomebackagain' then
        os.exit()
    end
end