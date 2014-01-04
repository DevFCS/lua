--[[
Welcome to cipher day!

Write a program that can encrypt texts with an alphabetical caesar cipher. This cipher can ignore numbers, symbols, and whitespace.

For extra credit, add a "decrypt" function to your program!
]]
local a = {}
local function encode(x)
    for char in string.gmatch(x, "%a") do
	    local encrypted = string.byte(char) + offset
	    while encrypted > 122 do
	    	encrypted = encrypted - 26
	    end
	    a[#a+1] = string.char(encrypted)
	end
    return table.concat(a) 
end
local function decode(x)
	offset = offset * -1
	return encode(x)
end
print("Do you want to (e)ncode or (d)ecode?")
local option = io.read()
if option == "e" then
	print("Please enter the string you want to encode:")
	local input = string.lower(io.read())
	print("Please enter an offset")
	offset = io.read("*n")
	print(encode(input))
elseif option == "d" then
	print("Please enter the string you want to decode:")
	local input = string.lower(io.read())
	print("Please enter an offset")
	offset = io.read("*n")
	print(decode(input))
else
	print("You can only encode or decode (e, d)")
end  
