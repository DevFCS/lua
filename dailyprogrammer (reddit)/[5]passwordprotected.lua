--[[ Easy Challenge #5
Your challenge for today is to create a program which is password protected, and won't open unless the correct user and password is given.
For extra credit, have the user and password in a seperate .txt file.
For even more extra credit, break into your own program :)
--]]
-- ROT X for security
local input = assert(io.open("[5]passwordprotected.txt", "r"))
local b = {}
for i in string.gmatch(input:read(), "%S+") do
  b[#b+1] = i
end
local offset = b[3]
local function encode(x)
    local a = {}
    for char in string.gmatch(x, "%a") do
	    local encrypted = string.byte(char) + offset
	    a[#a+1] = string.char(encrypted)
	end
    return table.concat(a) 
end
print("Please enter your username:")
local username = io.read()
if encode(username) == b[1] then
	print("Please enter your Password:")
	password = io.read()
	if encode(password) == b[2] then
		print("Welcome")
	else print("Access denied.")
	end
else print("Access denied.")
end