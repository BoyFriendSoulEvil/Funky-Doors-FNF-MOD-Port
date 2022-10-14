function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-death');
	-- background shiz

	makeLuaSprite('RoomsBG', 'roombg', 150, 50);
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
	if curBeat == 64 then

		addLuaSprite('RoomsBGdark1', false);
		addLuaSprite('RoomsBGdark2', true);
		removeLuaSprite('RoomsBG', false);
		removeLuaSprite('RoomsBG2', true);

		local xx = 500;
			local yy = 600;
			local xx2 = 700;
			local yy2 = 500;
			local ofs = 60;
			local followchars = true;
			local del = 0;
			local del2 = 0;
			
			
			function onUpdate()
				if del > 0 then
					del = del - 1
				end
				if del2 > 0 then
					del2 = del2 - 1
				end
				if followchars == true then
					if mustHitSection == false then
						if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
							triggerEvent('Camera Follow Pos',xx-ofs,yy)
						end
						if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
							triggerEvent('Camera Follow Pos',xx+ofs,yy)
						end
						if getProperty('dad.animation.curAnim.name') == 'singUP' then
							triggerEvent('Camera Follow Pos',xx,yy-ofs)
						end
						if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
							triggerEvent('Camera Follow Pos',xx,yy+ofs)
						end
						if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
							triggerEvent('Camera Follow Pos',xx-ofs,yy)
						end
						if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
							triggerEvent('Camera Follow Pos',xx+ofs,yy)
						end
						if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
							triggerEvent('Camera Follow Pos',xx,yy-ofs)
						end
						if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
							triggerEvent('Camera Follow Pos',xx,yy+ofs)
						end
						if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
							triggerEvent('Camera Follow Pos',xx,yy)
						end
						if getProperty('dad.animation.curAnim.name') == 'idle' then
							triggerEvent('Camera Follow Pos',xx,yy)
						end
					else
			
						if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
							triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
						end
						if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
							triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
						end
						if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
							triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
						end
						if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
							triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
						end
					    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
							triggerEvent('Camera Follow Pos',xx2,yy2)
						end
					end
				else
					triggerEvent('Camera Follow Pos','','')
				end
				
			end
			
			
				end
			end