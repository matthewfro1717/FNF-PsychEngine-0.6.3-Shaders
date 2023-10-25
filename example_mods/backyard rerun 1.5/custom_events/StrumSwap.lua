function onEvent(n,v1,v2)
    if n == 'StrumSwap' then
        if v1 == '1' then
            for i = 0, 3 do
                noteTweenX('bruhh'..i, i, _G['defaultPlayerStrumX'..i], 0.3, 'smoothStepOut')
                noteTweenX('bruhh'..(i + 4), i + 4, _G['defaultOpponentStrumX'..i], 0.3, 'smoothStepOut')
            end
        elseif v1 == '0' then
            for i = 0, 3 do
                noteTweenX('bruhh2'..i, i, _G['defaultOpponentStrumX'..i], 0.3, 'smoothStepOut')
                noteTweenX('bruhh2'..(i + 4), i + 4, _G['defaultPlayerStrumX'..i], 0.3, 'smoothStepOut')
            end
        end
    end
end