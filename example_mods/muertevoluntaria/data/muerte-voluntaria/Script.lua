function onUpdate()

	setProperty('boyfriend.x', getProperty('boyfriend.x')+5)
	setProperty('dad.x', getProperty('dad.x')+5)
	setProperty('gf.x', getProperty('gf.x')+5)
	
	if (getProperty('boyfriend.x') >= 9600) then
	
		setProperty('boyfriend.x', 600)
		setProperty('dad.x', 0)
		setProperty('gf.x', 200)
	
	end
	
end