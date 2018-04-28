--TinkerTunnelMiner(TTM)
local args = {...}
r = require("robot")
local component = require("component")
local tb = component.tractor_beam
index = 0;
length = tonumber(args[1])
while index < length  do
	r.swing()
	r.forward()
	tb.suck()
	tb.suck()
	index = index + 1
end
