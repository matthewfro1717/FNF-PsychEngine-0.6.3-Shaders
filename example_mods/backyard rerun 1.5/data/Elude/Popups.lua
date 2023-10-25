popupList = {
    'popup1',
    'popup2',
    'popup3',
    'popup4',
    'popup5',
    'popup6'
}

function onCreate()
    for i = 1, #popupList do
        makeLuaSprite('popup'..i, 'Expunged/EludeErrors/Error'..i, getRandomInt(0, 779), getRandomInt(0, 510))
        setProperty('popup'..i..'.alpha', 1)
        setObjectCamera('popup'..i, 'other')
        scaleObject('popup'..i, 0.5, 0.5)
    end
end

function noteMiss(membersIndex, noteData, noteType, isSustainNote)
    if isSustainNote == false then
        number = getRandomInt(1,6)
        numberFloat = getRandomFloat(0.4, 0.6)
        scaleObject('popup'..number, numberFloat, numberFloat)
        setProperty('popup'..number..'.x', getRandomInt(0, 779))
        setProperty('popup'..number..'.y', getRandomInt(0, 510))
        setProperty('popup'..number..'.alpha', 1)
        addLuaSprite('popup'..number, true)
        runTimer('popup'..number..'Timer', 3, 1)
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    for i = 1, #popupList do
        if tag == 'popup'..i..'Timer' then
            doTweenAlpha('popupDisapear'..i, 'popup'..i, 0, 1)
        end
    end
end