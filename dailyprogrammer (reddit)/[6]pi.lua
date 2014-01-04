--[[ Easy Challenge #6
You're challenge for today is to create a program that can calculate pi accurately to at least 30 decimal places.

Try not to cheat :)
--]]
output = io.open("test", "w")
--local tropfenzahl = 100000000000000000
local tropfenzahl = 1000
local innerhalb = 0
local gesamt= tropfenzahl
math.randomseed(os.time())
while tropfenzahl > 0 do
	print(tropfenzahl)
	dotx = math.random()
	doty = math.random()
	if (dotx*dotx + doty*doty <= 1) then
		innerhalb = innerhalb + 1
	end
	tropfenzahl = tropfenzahl - 1
end
pi = 4*innerhalb/gesamt
print(pi)
output:write(pi)
output:close()

