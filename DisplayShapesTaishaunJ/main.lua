-- Title: Displaying Shapes
-- Name: Taishaun
-- Course: ICS2O
-- This program is Displaying different shapes in lua.
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- sets the background colour 
display.setDefault("background", 0/255, 160/255, 255/255) 

-- create a variable 
local Triangle
local TriangleVertices = { 150,-150, 150,150, -150,-150}

-- make the triangle
Triangle = display.newPolygon(325, 325, TriangleVertices)

-- show where the triangle will be located 
Triangle.anchorX = 150 
Triangle.anchorY = 250

-- set the colour for the triangle 
Triangle:setFillColor(1, 1, 1)

display.newText("Triangle", 150, 325, nil, 60)

-- set the width of the border 
Triangle.strokeWidth = 25

-- set the colour of the border 
Triangle:setStrokeColor(0, 0, 0)

-- create a variable 
local Trapezoid  
local TrapezoidVertices = {100,-100, -100,-100, -150,100, 150,100}

-- make a Trapezoid
Trapezoid = display.newPolygon(850, 150, TrapezoidVertices)

-- set the colour for the Trapezoid
Trapezoid:setFillColor(0, 0, 0)

-- set the width of the border
Trapezoid.strokeWidth = 25

-- set the colour of the border
Trapezoid:setStrokeColor(1, 1, 1)

display.newText("Trapezoid", 850, 325, nil, 55)

-- create a variable
local Parallelogram 
local ParallelogramVertices = {125,-125, -125,-125, -175,125, 75,125}

-- create a parallelogram
Parallelogram = display.newPolygon(60, 425, ParallelogramVertices)

-- show where the parallelogram will be located
Parallelogram.anchorX = 0 
Parallelogram.anchorY = 0

-- set the colour for the Parallelogram
Parallelogram:setFillColor(255/255, 0, 0)

-- set the width of the border 
Parallelogram.strokeWidth = 20

-- set the coulor of the border
Parallelogram:setStrokeColor(0, 0, 255/255)

display.newText("Parallelogram", 200, 725, nil, 60)