-----------------------------------------------------------------------------------------
-- Title: Commpany Logo Animation
-- Name: Taishaun Johnson
-- Course: ICS2O/3C
-- This program...
----------------------------------------------------------------------------------------------------

-- hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- global variables
scrollSpeed = 3

-- set the background colour
display.setDefault("background", 28/255, 121/255, 243/255)

-----------------------------------------------------------------------------------------------------------------
-- Local Variables
-----------------------------------------------------------------------------------------------------------------

local logo 
local scrollXSpeed = 8
local scrollYSpeed = -3
local sounds
local soundsChannel

-----------------------------------------------------------------------------------------------------------------

-- display image 
logo = display.newImageRect("images/CompanyLogoTaishaunJ@2x-Recovered-Recovered.png", 300, 500)
logo.x = 100
logo.y = 700

-----------------------------------------------------------------------------------------------------------------
-- Local Functions
-----------------------------------------------------------------------------------------------------------------

-- The function that moves the logo across the screen
local function movelogo()
	logo.x = logo.x + scrollXSpeed
	logo.y = logo.y + scrollYSpeed
end
