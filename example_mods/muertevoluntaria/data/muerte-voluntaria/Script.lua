function onUpdate()

	if curBeat == 0 then
	
		makeLuaSprite('bgdeadcc', 'bgdeadcc', -600, -300);
		setScrollFactor('bgdeadcc', 0.9, 0.9);

		addLuaSprite('bgdeadcc', false);
	
	end

	setProperty('boyfriend.x', getProperty('boyfriend.x')+5)
	setProperty('dad.x', getProperty('dad.x')+5)
	setProperty('gf.x', getProperty('gf.x')+5)
	
	if (getProperty('boyfriend.x') >= 9600) then
	
		setProperty('boyfriend.x', 600)
		setProperty('dad.x', 0)
		setProperty('gf.x', 200)
		
		if curBeat >= 256 then
		
			setProperty('lluvia.x', -100)
		
		end
	
	end
	
	if curBeat == 256 then
	
		makeAnimatedLuaSprite('lluvia', 'LluviaMomento', -100, -150);
		addLuaSprite('lluvia', true);
		addAnimationByPrefix('lluvia', 'idle', 'LluviaMomento idle', 15);
		objectPlayAnimation('lluvia', 'idle');
		setGraphicSize('lluvia', 1500, 700);
	
	end

	if curBeat >= 256 then
	
		setProperty('lluvia.x', getProperty('lluvia.x')+5)
	
	end
	
	if curBeat == 446 then
	
		removeLuaSprite('bgdeadcc', true);
	
	end
	
	if curBeat == 503 then
	
		makeLuaSprite('bgdeadccnight', 'bgdeadccnight', -600, -300);
		setScrollFactor('bgdeadccnight', 0.9, 0.9);

		addLuaSprite('bgdeadccnight', false);
		
		makeAnimatedLuaSprite('totem', 'TotemRevivir', 0, 0);
		addLuaSprite('totem', true);
		addAnimationByPrefix('totem', 'idle', 'TotemRevivir idle', 24, false);
		objectPlayAnimation('totem', 'idle');
	
	end
	
	if curBeat >= 503 then
		
		setProperty('totem.x', getProperty('boyfriend.x'))
		
	end
	
end