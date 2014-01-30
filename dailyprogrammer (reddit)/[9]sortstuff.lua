--[[ Easy Challenge #9
White a program that will allow the user to input digits, and arrange them in numerical order.
For extra credit, have it also arrange strings in alphabetical order.
--]]
local sorted = {}
local digits = {}
local strings = {}
print("This programm will sort digits and strings. Enter your digits and strings comma seperated (Programm will ignore spaces)")
local input = io.read()
input = string.gsub(input, "%s", "")
for args in string.gmatch(input, "%P+") do
	if not tostring(args) then do
		digits[#digits + 1] = args
	end
	else
		strings[#strings + 1] = args
	end
end
table.sort(digits)
table.sort(strings)
for k,v in ipairs(digits) do 
	sorted[k] = v
end 
for k,v in ipairs(strings) do 
	table.insert(sorted, v)
end
print(table.concat(sorted, ", "))
