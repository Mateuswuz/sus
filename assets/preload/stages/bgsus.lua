function onCreate()
	makeLuaSprite('bgsus', 'bgsus', -1051, -621);
	scaleObject('bgsus', 1.3, 1.3);
	setScrollFactor('bgsus', 1, 1);
	setProperty('bgsus.antialiasing', true);
	setObjectOrder('bgsus', 0);

	setScrollFactor('gfGroup', 0.95, 0.95);
	setProperty('gfGroup.antialiasing', true);
	setObjectOrder('gfGroup', 1);

	setScrollFactor('dadGroup', 1, 1);
	setProperty('dadGroup.antialiasing', true);
	setObjectOrder('dadGroup', 2);

	setScrollFactor('boyfriendGroup', 1, 1);
	setProperty('boyfriendGroup.antialiasing', true);
	setObjectOrder('boyfriendGroup', 3);

	close(true);
end