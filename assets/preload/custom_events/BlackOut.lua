function onEvent(name, value1, value2)
	if name == 'BlackOut' then
		if value1 == 'true' then
		makeLuaSprite('BlackFlash', 'blackground', 0, 0);
		scaleObject('BlackFlash', screenWidth, screenHeight);
		addLuaSprite('BlackFlash', true)
		setObjectCamera('BlackFlash', 'hud');
		setObjectOrder('BlackFlash', 9999999);
		setProperty('BlackFlash.visible', true);
		elseif value1 == 'false' then
		setProperty('BlackFlash.visible', false)
			end
		end
	end