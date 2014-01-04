--[[ Easy Challenge #6
You're challenge for today is to create a program that can calculate pi accurately to at least 30 decimal places.

Try not to cheat :)
--]]
local drops = 100000000000000000
local inside = 0
local all = drops
math.randomseed(os.time())
while drops > 0 do
	dotx = math.random()
	doty = math.random()
	if (dotx * dotx + doty * doty <= 1) then
		inside = inside + 1
	end
	drops = drops - 1
end
pi = 4 * inside / all
print(pi)
--[[
Notice: drops needs to be huge, which causes a long processing time
]]
