local healthBarStyle = ''
function onCreatePost()
		healthBarStyle = 'Doors'
		makeLuaSprite('DoorsHealthBar', 'doorshealthbar', 0, 0)
		setObjectCamera('DoorsHealthBar', 'hud')
		addLuaSprite('DoorsHealthBar', true)
		setObjectOrder('DoorsHealthBar', 99999)

		makeLuaSprite('DoorsHealthBarP2','',getProperty('healthBar.x'),getProperty('healthBar.y') - 5)
		setObjectCamera('DoorsHealthBarP2','hud')
		makeGraphic('DoorsHealthBarP2',360,9,'D9745D')
		addLuaSprite('DoorsHealthBarP2',true)
		setObjectOrder('DoorsHealthBarP2',9999)
	
		makeLuaSprite('DoorsHealthBarP1','',getProperty('healthBar.x'),getProperty('healthBar.y') - 6.6)
		setObjectCamera('DoorsHealthBarP1','hud')
		makeGraphic('DoorsHealthBarP1',360/2,9,'FFEEBC')
		addLuaSprite('DoorsHealthBarP1',true)
		setObjectOrder('DoorsHealthBarP1',9999)
	end


function onUpdate()
	if healthBarStyle == 'Doors' then
		if not downscroll then
		    setProperty('DoorsHealthBar.x', 100)
		    setProperty('DoorsHealthBar.y', 600)

		    setProperty('DoorsHealthBarP1.x',45)
		    setProperty('DoorsHealthBarP1.y',602)
		
		    setProperty('DoorsHealthBarP2.x',45)
		    setProperty('DoorsHealthBarP2.y',602)

		    setProperty('scoreTxt.x',-400)
		    setProperty('scoreTxt.y',650)
		else
		    setProperty('DoorsHealthBar.x', 100)
		    setProperty('DoorsHealthBar.y', 100)

		    setProperty('DoorsHealthBarP1.x',45)
		    setProperty('DoorsHealthBarP1.y',102)
		
		    setProperty('DoorsHealthBarP2.x',45)
		    setProperty('DoorsHealthBarP2.y',102)

		    setProperty('scoreTxt.x',-400)
		    setProperty('scoreTxt.y',150)
		end

		setProperty('DoorsHealthBar.scale.x', 1.55)
		setProperty('DoorsHealthBar.scale.y', 2)
		setProperty('DoorsHealthBar.angle', getProperty('healthBar.angle'))

		setProperty('healthBar.x', -900)

		setProperty('timeBar.color', getColorFromHex('fce2c0'))

		if getProperty('health') <= 2 then
			scaleObject('DoorsHealthBarP1',getProperty('health'),getProperty('healthBar.scale.y'))
			scaleObject('DoorsHealthBarP2',getProperty('healthBar.scale.x'),getProperty('healthBar.scale.y'))
		end
	   
		setProperty('iconP1.alpha', 0)
		setProperty('iconP2.alpha', 0)
		setProperty('healthBar.flipX', true)
	end

	if healthBarStyle ~= '' then

		setProperty('healthBarBG.visible', false)
		setProperty('healthBar.scale.y', 2.2)
		setObjectOrder('healthBar', 3)
		setObjectOrder('healthBarBG', 2)
	end
end