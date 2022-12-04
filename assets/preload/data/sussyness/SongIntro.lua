--easy script configs
IntroSubTextSize = 40 --size of the text for the Song Name.
IntroTagWidth = 25	--Width of the box's tag thingy.
--easy script configs

--actual script
function onCreate()
	--the box
   makeLuaSprite('JukeBox', 'musicBar', 0-IntroTagWidth, 15)
	setObjectCamera('JukeBox', 'other')
	setProperty('JukeBox.y', 470);
	setProperty('JukeBox.alpha', 0.9);
	setProperty('JukeBox.x', 1400);
	addLuaSprite('JukeBox', true)

	--text for the song name
   makeLuaText('JukeBoxSubText', 'Waldo69 - Sussyness', 0-IntroTagWidth, 60)
	setTextAlignment('JukeBoxSubText', 'left')
	setObjectCamera('JukeBoxSubText', 'other')
	setProperty('JukeBoxSubText.alpha', 0.9);
	setTextSize('JukeBoxSubText', IntroSubTextSize)
	setProperty('JukeBoxSubText.y', 477);
	setProperty('JukeBoxSubText.x', 1410);
    setTextFont('JukeBoxSubText', 'PhantomX.ttf')
	addLuaText('JukeBoxSubText')
end

--motion functions
function onSongStart()
	-- Inst and Vocals start playing, songPosition = 0
	doTweenX('MoveInTwo', 'JukeBox', 550, 1, 'CircInOut')
	doTweenX('MoveInFour', 'JukeBoxSubText', 630, 1, 'CircInOut')
	
	runTimer('JukeBoxWait', 3, 0)
end

function onTimerCompleted(tag, loops, loopsLeft)
	-- A loop from a timer you called has been completed, value "tag" is it's tag
	-- loops = how many loops it will have done when it ends completely
	-- loopsLeft = how many are remaining
	if tag == 'JukeBoxWait' then
		doTweenX('MoveOutTwo', 'JukeBox', 1300, 1.5, 'CircInOut')
		doTweenX('MoveOutFour', 'JukeBoxSubText', 1380, 1.5, 'CircInOut')
	end
end