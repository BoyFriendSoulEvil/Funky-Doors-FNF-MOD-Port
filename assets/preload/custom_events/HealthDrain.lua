function onEvent(name, value1, value2)
	function opponentNoteHit(id, noteData, noteType, isSustainNote)
		if getProperty('health') > (value2 / 50) and getProperty('health') < (value1 / 50) then -- Health is from 0 to 2, so dividing the value by 50 allow to just turn it into percentage easly
			setProperty('health', (value2 / 50))
		else if  getProperty('health') > (value2 / 50) and getProperty('health') > (value1 / 50) then
			setProperty('health', getProperty('health')-(value1 / 50))
		end
		end
	end
end



function onBeatHit()



	if curBeat == 50 then
		addLuaSprite('black', false);
		end

	if curBeat == 52 then
		
		removeLuaSprite('black', false);
		end

			if curBeat == 244 then
				removeLuaSprite('bars', false);
				end
				
				if curBeat == 244 then
				removeLuaSprite('ground', false);
				end
				
				if curBeat == 244 then
					removeLuaSprite('house', false);
					end

			if curBeat == 244 then
				addLuaSprite('pixelwalk', false);
				end



				if curBeat == 311 then
					removeLuaSprite('pixelwalk', false);
					end

				if curBeat == 311 then
					addLuaSprite('bars', false);
					end
					
end


if not lowQuality then
	
		if curBeat == 50 then
			removeLuaSprite('bars', false);
			end
			
			if curBeat == 50 then
			removeLuaSprite('bars', false);
			end
			
			if curBeat == 50 then
			removeLuaSprite('ground', false);
			end
			
			if curBeat == 50 then
				removeLuaSprite('house', false);
				end
	
				if curBeat == 50 then
					addLuaSprite('fire', false);
					end

			if curBeat == 50 then
			addLuaSprite('bars', false);
			end
			
			if curBeat == 50 then
			addLuaSprite('ground', false);
			end
			
			if curBeat == 50 then
			addLuaSprite('house', false);
			end		

	if curBeat == 112 then
		addLuaSprite('static whens', true);
		end
		
		if curBeat == 116 then
			removeLuaSprite('static whens', true);
			end

			if curBeat == 244 then
				addLuaSprite('fire', false);
				end

	if curBeat == 244 then
		addLuaSprite('blaze', false);
		end

	if curBeat == 311 then
		removeLuaSprite('blaze', false);
		end

	if curBeat == 311 then
		addLuaSprite('groundsus', false);
		end
		
		if curBeat == 311 then
		addLuaSprite('house', false);
		end

		if curBeat == 312 then
			addLuaSprite('donald', true);
			end

			if curBeat == 311 then
				addLuaSprite('minnie', false);
				end
			end
