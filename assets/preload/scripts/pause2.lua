--redthing x: 770
--marcospause x: 40
--resume x: 700
--restart x: 710
--exit x: 635
--quit x: 755
--pointer x: getProperty('h2.x') + 80
local tweentime = 0.3
function onPause()
	return Function_Stop;
end
function onCreate()
	dontappearplease = false
	tinocoPaused = false
	resume = false
	restart = false
	exit = false
	quit = false
	pausenumber = math.random(1, 17)
	precacheSound('elevatorJam')
	precacheSound('pause')
	precacheSound('unpause')
	precacheSound('scroll')

	makeLuaSprite('bgbgbgbgbgbgbgbgbgbgbgbgbgbgbg', nil, 0, 0)
	makeGraphic('bgbgbgbgbgbgbgbgbgbgbgbgbgbgbg', screenWidth, screenHeight, '200f0f')
	setProperty('bgbgbgbgbgbgbgbgbgbgbgbgbgbgbg.alpha', 0.4)
	setObjectCamera('bgbgbgbgbgbgbgbgbgbgbgbgbgbgbg', 'other')
	setProperty('bgbgbgbgbgbgbgbgbgbgbgbgbgbgbg.visible', false)
	addLuaSprite('bgbgbgbgbgbgbgbgbgbgbgbgbgbgbg')

	makeLuaSprite('xd', 'pauseBorder', 0, -120)
	setObjectCamera('xd', 'other')
	setProperty('xd.visible', false)
	addLuaSprite('xd')

	makeLuaSprite('rollordie', 'pauseBorder2', 0, 0)
	setObjectCamera('rollordie', 'other')
	setProperty('rollordie.visible', false)
	addLuaSprite('rollordie')

	makeLuaText('h', 'Paused', 600, 30, -10)
	setObjectCamera('h', 'other')
	setTextSize('h', 89)
	setProperty('h.visible', false)
	addLuaText('h')
	setTextFont('h', 'Oswald.ttf')
	setTextColor('h', 'fce2c0')

	makeLuaSprite('funnylittleguy', 'pause/lilhidyboy', 495, 0)
	scaleObject('funnylittleguy', 0.5, 0.5)
	setObjectCamera('funnylittleguy', 'other')
	setProperty('funnylittleguy.visible', false)
	addLuaSprite('funnylittleguy')

	makeLuaText('h2', 'RESUME', 600, 1200, 125)
	setObjectCamera('h2', 'other')
	setTextSize('h2', 80)
	setProperty('h2.visible', false)
	addLuaText('h2')
	setTextFont('h2', 'Gotham.otf')
	setTextColor('h2', 'fce2c0')

	makeLuaText('h3', 'RESTART', 600, 1200, 235)
	setObjectCamera('h3', 'other')
	setTextSize('h3', 80)
	setProperty('h3.visible', false)
	addLuaText('h3')
	setTextFont('h3', 'Gotham.otf')
	setTextColor('h3', 'fce2c0')

	makeLuaText('h4', 'MENU', 600, 1200, 345)
	setObjectCamera('h4', 'other')
	setTextSize('h4', 80)
	setProperty('h4.visible', false)
	addLuaText('h4')
	setTextFont('h4', 'Gotham.otf')
	setTextColor('h4', 'fce2c0')

	makeLuaText('h5', 'QUIT', 600, 1200, 455)
	setObjectCamera('h5', 'other')
	setTextSize('h5', 80)
	setProperty('h5.visible', false)
	addLuaText('h5')
	setTextFont('h5', 'Gotham.otf')
	setTextColor('h5', 'fce2c0')
	
	makeLuaSprite('pointydoingy', 'pause/pointy', 1000, 160)
	setObjectCamera('pointydoingy', 'other')
	setProperty('pointydoingy.visible', false)
	addLuaSprite('pointydoingy')
end
function onGameOver()
	dontappearplease = true
end
function onGameOverConfirm(retry)
	dontappearplease = true
end
function onUpdatePost()
	if dontappearplease == true then
		setProperty('doorspause.visible', false)
	end
end
function onUpdate()
	if tinocoPaused == true then
		setProperty('bgbgbgbgbgbgbgbgbgbgbgbgbgbgbg.visible', true)
		setProperty('xd.visible', true)
		setProperty('rollordie.visible', true)
		setProperty('h.visible', true)
		setProperty('funnylittleguy.visible', true)
		setProperty('h2.visible', true)
		setProperty('h3.visible', true)
		setProperty('h4.visible', true)
		setProperty('h5.visible', true)
		setProperty('pointydoingy.visible', true)
		doTweenX('tween1', 'rollordie', 50, tweentime, 'linear')
		doTweenX('tween2', 'doorspause', 40, tweentime, 'linear')
		doTweenX('tween3', 'h2', 700, tweentime, 'linear')
		doTweenX('tween4', 'h3', 717, tweentime, 'linear')
		doTweenX('tween5', 'h4', 650, tweentime, 'linear')
		doTweenX('tween6', 'h5', 630, tweentime, 'linear')
		doTweenX('tween7', 'pointydoingy', 755, tweentime, 'linear')
		setPropertyFromClass('Conductor', 'songPosition', getPropertyFromClass('Conductor', 'songPosition')-16) -- it is counted by milliseconds, 1000 = 1 second
		setPropertyFromClass('flixel.FlxG', 'sound.music.time', getPropertyFromClass('Conductor', 'songPosition')-16)
		setProperty('vocals.time', getPropertyFromClass('Conductor', 'songPosition'))
		setPropertyFromClass('PauseSubstate','songName', 'elevatorJam')
		setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0)
		setProperty('vocals.volume', 0)
	else
		setProperty('bgbgbgbgbgbgbgbgbgbgbgbgbgbgbg.visible', false)
		setProperty('xd.visible', false)
		setProperty('rollordie.visible', false)
		setProperty('doorspause.visible', false)
		setProperty('h.visible', false)
		setProperty('funnylittleguy.visible', false)
		setProperty('h2.visible', false)
		setProperty('h3.visible', false)
		setProperty('h4.visible', false)
		setProperty('h5.visible', false)
		setProperty('pointydoingy.visible', false)
		doTweenX('tween1', 'rollordie', 300, tweentime, 'linear')
		doTweenX('tween2', 'doorspause', -40, tweentime, 'linear')
		doTweenX('tween3', 'h2', 1200, tweentime, 'linear')
		doTweenX('tween4', 'h3', 1200, tweentime, 'linear')
		doTweenX('tween5', 'h4', 1200, tweentime, 'linear')
		doTweenX('tween6', 'h5', 1200, tweentime, 'linear')
		doTweenX('tween7', 'pointydoingy', 1000, tweentime, 'linear')
		setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 1)
		setProperty('vocals.volume', 1)		
	end
	if resume == true then
		setProperty('pointydoingy.y', 150)
	elseif restart == true then
		setProperty('pointydoingy.y', 260)
	elseif exit == true then
		setProperty('pointydoingy.y', 370)
	elseif quit == true then
		setProperty('pointydoingy.y', 480)
	end
	ILOVEBUTTONS()
end
function ILOVEBUTTONS()
	if keyJustPressed('pause') then
		if tinocoPaused == false then
			pausenumber = math.random(1, 17)
			makeLuaSprite('doorspause', 'pause/pauseimages/doorspause' .. pausenumber, -40, 150)
			setObjectCamera('doorspause', 'other')
			addLuaSprite('doorspause')
			playSound('pause')
			tinocoPaused = true
			resume = true
			restart = false
			exit = false
			quit = false
		elseif tinocoPaused == true and resume == true then
			removeLuaSprite('doorspause', true)
			playSound('unpause')
			tinocoPaused = false
			resume = false
			restart = false
			exit = false
			quit = false
		elseif tinocoPaused == true and restart == true then
			restartSong(false);
		elseif tinocoPaused == true and exit == true then
			exitSong(false);
		elseif tinocoPaused == true and quit == true then
			os.exit();
		end
	end
	if keyJustPressed('up') and tinocoPaused == true then
		playSound('scroll')
		if resume == true then
			resume = false
			restart = false
			exit = false
			quit = true
		elseif quit == true then
			resume = false
			restart = false
			exit = true
			quit = false
		elseif exit == true then
			resume = false
			restart = true
			exit = false
			quit = false
		elseif restart == true then
			resume = true
			restart = false
			exit = false
			quit = false
		end
	end
	if keyJustPressed('down')  and tinocoPaused == true then
		playSound('scroll')
		if resume == true then
			resume = false
			restart = true
			exit = false
			quit = false
		elseif restart == true then
			resume = false
			restart = false
			exit = true
			quit = false
		elseif exit == true then
			resume = false
			restart = false
			exit = false
			quit = true
		elseif quit == true then
			resume = true
			restart = false
			exit = false
			quit = false
		end
	end
end