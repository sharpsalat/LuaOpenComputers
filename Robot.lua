--robot
term = require("term")
r = require("robot")
local component = require("component")
local tb = component.tractor_beam
local g = component.generator
local m = component.modem
local event = require("event")
term.clear()
m.open(66)
while true do
   local _, _, _, _, _, msg = event.pull("modem_message")
   z = tostring(msg)
	if (z=="f") then
        r.forward()
	elseif (z=="b") then
        r.back()
	elseif (z=="l") then
        r.turnLeft()		
	elseif (z=="r") then
        r.turnRight()
	elseif (z=="u") then
        r.up()
	elseif (z=="d") then
        r.down()
	elseif (z=="swing") then
        r.swing()
	elseif (z=="useup") then
        r.useUp()
	elseif (z=="usedown") then
        r.useDown()
	elseif (z=="swingup") then
        r.swingUp()
	elseif (z=="swingdown") then
        r.swingDown()
	elseif (z=="use") then
        r.use()
	elseif (z=="suck") then
        r.suck()
		tb.suck()
	elseif (z=="drop") then
		index = 1;
		while (index <= r.inventorySize()) do
			r.select(index)
			r.drop()
			index = index + 1
		end     
	elseif (z=="exit") then
        shell.execute("sh")
	elseif (z=="shell") then
        local _, _, _, _, _, msg = event.pull("modem_message")
		os.execute(msg)
   end   
end 