function onCreate()
    addCharacterToList('3dEnragedBambi', 'dad')
end

function onStepHit()

    if curStep == 1288 then
        triggerEvent('Play Animation', 'scream', 'dad');
    end

    if curStep == 1296 then
        triggerEvent('Change Character', 'dad', '3dEnragedBambi');
    end

end