--[[ Easy Challenge #4
You're challenge for today is to create a random password generator!

For extra credit, allow the user to specify the amount of passwords to generate.

For even more extra credit, allow the user to specify the length of the strings he wants to generate!
--]]
math.randomseed(os.time())
local function createpassword(x)
	local a = {}
	for count = 1, x do
		a[#a+1] = string.char(math.random(33,126))
	end
	return table.concat(a)
end
print("Length of passwords?")
length = io.read("*n")
print("How many passwords do you want to generate?")
number = io.read("*n")
for count1 = 1, number do
	print(createpassword(length))
end