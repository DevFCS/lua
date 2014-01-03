--[[
Welcome to cipher day!

Write a program that can encrypt texts with an alphabetical caesar cipher. This cipher can ignore numbers, symbols, and whitespace.

For extra credit, add a "decrypt" function to your program!

]]
local input = io.read()
local offset = io.read("*n")
local a = {}
for char in string.gmatch(input, "%a") do
	encrypted = string.byte(char) + offset
	a[#a+1] = string.char(encrypted)
end 
print(table.concat(a))    
