--[[ Easy Challenge #6
You're challenge for today is to create a program that can calculate pi accurately to at least 30 decimal places.

Try not to cheat :)
--]]
local pi = 4 * math.atan(1/5) - math.atan(1/239)
print(string.format("%.30f", pi * 4))