function onUpdate()

	if curBeat == 2064 then
	
		makeLuaSprite('alerta', 'alerta', 1000, 200);
		setScrollFactor('alerta', 0.9, 0.9);

		addLuaSprite('alerta', true);
	
	end
	
	if curBeat == 2080 then
	
		removeLuaSprite('alerta', false);
		
	end
	
	if curBeat == 2130 then
	
		addLuaSprite('alerta', true);
	
	end
	
	if curBeat == 2150 then
	
		removeLuaSprite('alerta', false);
		
	end
	
end