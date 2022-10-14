function onCreate()
    setProperty('dad.visible', false)
end

function onUpdate(elapsed)
    if curBeat == 127 then
        setProperty('dad.visible', true)
    end
end
