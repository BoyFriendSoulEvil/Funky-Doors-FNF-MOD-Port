function onCreate()
    if songName == 'Hurtle' or 'Closeted' then
        setPropertyFromClass('GameOverSubstate','characterName', 'bf-death'); -- character json
        setPropertyFromClass('GameOverSubstate','loopSoundName', 'guidingLight'); -- mods/music/
        setPropertyFromClass('GameOverSubstate','endSoundName', 'guidingLightEnd'); -- mods/music/
        setPropertyFromClass('PauseSubstate','songName', 'elevatorJam'); -- mods/music/
    end
end