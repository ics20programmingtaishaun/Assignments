---- Title: AnimatingImages
-- Name: Taishaun Johnson
-- Course: ICS2O/3C
-- This program animates images by make an image grow bigger, fade out and bounce off the screen.
-------------------------------------------------------------------------------------------------------

-- hide the status bar 
display.setStatusBar(display.HiddenStatusBar)

-- global variables 
scrollSpeed = 2 
scrollSpeed2 = 2 
scrollSpeed3 = 2 
moonX = 2
moonY = 2
moonUpdate = 0.02

-- background image with width and height 
local backgroundImage = display.newImageRect("Images/space background.jpg", 2300, 1800)

-- character image with width and height 
local moon = display.newImageRect("Images/Moon.png", 200, 200)

-- character image with width and height 
local astronaut = display.newImageRect("Images/astronaut.png", 200, 200)

-- character image with width and hieght 
local sun = display.newImageRect("Images/Sun.png", 200, 200)

-- Scale the image by 200% (x) and 50% (y)
moon:scale(2,2)

-- set the image to be transparent or visual 
moon.alpha = 1
astronaut.alpha = 1
sun.alpha = 0

-- set the initial x and y position of moon
moon.x = 0
moon.y = display.contentHeight/3 

-- set the initial x and y position of sun 
sun.x = 1024
sun.y = display.contentHeight/1.5

-- set the initial x and y position of astronaut
astronaut.y = 700
astronaut.x = display.contentWidth/2

-- Function: MoveSun
-- Input: this function accepts an event listener
-- Output: none 
-- Discription: This function adds the scroll speed to the x-value of the sun
local function MoveSun(event)
	sun.x = sun.x + scrollSpeed
	-- change the transparency of the ship every time it moves so that it fades out 
	sun.alpha = sun.alpha + 0.01	
	if (sun.x > 1023) then
	scrollSpeed = -2
	-- Flip the image vertically and horizantally 
	sun:scale(-1,1)
	end

	if (sun.x < 0) then
	scrollSpeed = 2
	-- Flip the image vertically and horizantally 
	sun:scale(1,1)
	end
end

-- Function: MoveAstronaut
-- Input: this function accepts an event listener
-- Output: none 
-- Discription: This function adds the scroll speed to the y-value of the astronaut
local function MoveAstronaut(event) 
	astronaut.y = astronaut.y + scrollSpeed2

	if (astronaut.y < 0) then
	-- adds the scroll speed to the y-value of the astronaut when it's at the top
	astronaut:scale(1,-1)
	scrollSpeed2 = 2

	end 

	if (astronaut.y > 700) then
	-- adds the scroll speed to the y-value of the astronaut when it's at the bottom
	scrollSpeed2 = -2
	astronaut:scale(1,1)

end
	-- change the visibleness of the ship every time it moves so that it fades in 
	astronaut.alpha = astronaut.alpha - 0.0000000000000001

end

-- Function: MoveMoon
-- Input: this fuction accepts an event listener
-- Output: none 
-- Discription: This function adds scroll speed to the x-value of the moon and makes it grow bigger 

local function MoveMoon(event) 
	-- adds the scroll speed to the x-value of the moon and makes the moon grow
	moon.x = moon.x + scrollSpeed3
	
	moon.xScale = moon.xScale+ moonUpdate
	moon.yScale = moon.yScale + moonUpdate
	if (moon.x < 0) then
	scrollSpeed3 = 2
	
end
	if (moon.x > 1023) then
	scrollSpeed3 = -2

end
end
-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveSun)

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveMoon)

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveAstronaut)

-- Scale the image by 200% (x) and 50% (y)
astronaut:scale(1.5, 0.5)
sun:scale(1.5, 0.5)