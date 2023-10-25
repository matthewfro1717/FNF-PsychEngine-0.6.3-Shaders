function onUpdate(elapsed)
    if curStep == 902 then
        triggerEvent('Change Character', 'dad', 'BambiShredder')
        triggerEvent('Play Animation', 'TakeOut', 'dad')
    end
    if curStep == 1916 then
        triggerEvent('Play Animation', 'PutAway', 'dad')
    end
    if curStep == 1928 then
        triggerEvent('Change Character', 'dad', 'Bambi')
    end
end