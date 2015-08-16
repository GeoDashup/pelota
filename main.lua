-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
local centerX = display.contentCenterX
local centerY = display.contentCenterY
local _W = display.contentWidth
local _H = display.contentHeight


--Cargamos libreria physics
local physics = require "physics"

--Activamos pelota
physics.start( )

local sky = display.newImage("Clouds.png", centerX, 300 )
local ground = display.newImage("ground.jpg", centerX, 600 )

--local crate = display.newImage("crate.jpg", centerX, 200)


--Activamos suelo para el rebote
physics.addBody (ground, "static", {friction=0.49 ,bounce=0.56 } )


--Creación de la pelota


for i=1, 50 do

local pelota = display.newCircle( 130, -70, 20 )
local crate = display.newImage("crate.jpg", centerX, 200)

physics.addBody( pelota, {density = 0.0, friction=0.2 ,bounce=0.100 } )
physics.addBody( crate, {density = 0.0, friction=0.2 ,bounce=0.200 } )



end
