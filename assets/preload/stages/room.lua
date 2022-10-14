function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-death');
	-- background shiz

	makeLuaSprite('RoomsBG', 'roombg', 150, 60);
	scaleObject('RoomsBG', 1.3, 1.3);
	setScrollFactor('RoomsBG', 1,1);

	makeLuaSprite('RoomsBG2', 'wall', -800, 100);
	scaleObject('RoomsBG', 1.1, 1.1);
	setScrollFactor('RoomsBG', 0.96,0.96);

	makeLuaSprite('RoomsBGdark1', 'roombgdark', 0, 0);
	scaleObject('RoomsBGdark1', 1.3, 1.3);
	setScrollFactor('RoomsBGdark1', 1,1);

	makeLuaSprite('RoomsBGdark2', 'walldark', -1050, 100);
	scaleObject('RoomsBGdark2', 1.1, 1.1);
	setScrollFactor('RoomsBGdark2', 0.96,0.96);

	addLuaSprite('RoomsBG', false);
	addLuaSprite('RoomsBG2', true);
end

function onBeatHit()
	if curBeat == 127 then
		addLuaSprite('RoomsBGdark1', false);
	    addLuaSprite('RoomsBGdark2', true);
	    playSound('lightsBreak')
		removeLuaSprite('RoomsBG', false);
	    removeLuaSprite('RoomsBG2', true);
	end
end