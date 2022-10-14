function onCreate()
    makeLuaSprite('fad', 'lars', -600, -360)
    addLuaSprite('fad', true)
    doTweenAlpha('fadtween','fad',0, 0.1, linear)
    setObjectCamera('fad', 'hud')
    scaleObject('fad', 1.5, 0.3)

    setProperty('dad.visible', false)
end

function onUpdate(elapsed)
    if curBeat == 64 then
        setProperty('dad.visible', true)
    end
    if curBeat == 160 then
        doTweenAlpha('fadtween2', 'fad', 1, 0.3, linear)
end
if curBeat == 192 then
    doTweenAlpha('fadtween2', 'fad', 0, 0.3, linear)
end