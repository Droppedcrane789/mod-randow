function onCreate()

	makeLuaSprite('Sky_HS','Sky_HS',-200,-300)
	addLuaSprite('Sky_HS',false)
	
	makeLuaSprite('Moon_HS','Moon_HS',-200,-300)
	addLuaSprite('Moon_HS',false)
	
	makeLuaSprite('City','City',-200,-300)
	addLuaSprite('City',false)
	
	makeLuaSprite('Floor_HS','Floor_HS',-200,-300)
	addLuaSprite('Floor_HS',false)
	
	makeAnimatedLuaSprite('smoke', 'smoke', -840, 950);
    addAnimationByPrefix('smoke', 'smoke', 'smoke', 24, true);  
    objectPlayAnimation('smoke', 'smoke', true)
    scaleObject('smoke', 1.1, 1.1)
    addLuaSprite('smoke', false);
    
    makeAnimatedLuaSprite('smoke2', 'smoke2', 900, 1250);
    addAnimationByPrefix('smoke2', 'smoke2', 'smoke2', 24, true);  
    objectPlayAnimation('smoke2', 'smoke2', true)
    scaleObject('smoke2', 1.3, 1.3)
    addLuaSprite('smoke2', true);
    
    makeLuaSprite('Smok2', 'Smok2', 0, 0);
	setLuaSpriteScrollFactor('Smok2', 0.5, 0.5);
    scaleObject('Smok2', 5, 5)	
	addLuaSprite('Smok2', true);	
	setObjectCamera('Smok2', 'hud');
	
	        setProperty('smoke2.visible', false);
            setProperty('smoke.visible', false);
            setProperty('Smok2.visible', false);
            setProperty('Floor_HS.visible', true);
            setProperty('City.visible', true);
            setProperty('Moon_HS.visible', true);
            setProperty('Sky_HS.visible', true);
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
        if value1 == 'garcello' then
            setProperty('smoke2.visible', true);
            setProperty('smoke.visible', true);
            setProperty('Smok2.visible', true);
            setProperty('Floor_HS.visible', true);
            setProperty('City.visible', true);
            setProperty('Moon_HS.visible', true);
            setProperty('Sky_HS.visible', true);
	   end

	end
end 


function onBeatHit( ... )--for every beat
	-- body
end

function onStepHit( ... )--for every step
	-- body
end

function onUpdate( ... )
	-- body
end