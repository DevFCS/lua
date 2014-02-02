--[[ Easy Challenge #10
The exercise today asks you to validate a telephone number, as if written on an input form. Telephone numbers can be 
written as ten digits, or with dashes, spaces, or dots between the three segments, or with the area code 
parenthesized; both the area code and the white space between segments are optional.
 
Thus, all of the following are valid telephone numbers: 1234567890, 123-456-7890, 123.456.7890, (123)456-7890, (123) 
456-7890 (note the white space following the area code), and 456-7890.

The ffollowing are not valid telephone numbers: 123-45-6789, 123:4567890, and 123/456-7890

source: programmingpraxis.com
--]]
print("Please enter the number you want to check:")
local input = io.read()
local numbers = {"xxxxxxxxxx","xxx xxx xxxx","xxx-xxx-xxxx", "xxx.xxx.xxxx", "(xxx)xxxxxxxx", "(xxx)xxx xxxxx", "(xxx)xxx-xxxx", "(xxx)xxx.xxxx", "(xxx) xxxxxxxx", "(xxx) xxx xxxx", "(xxx) xxx-xxxx", "(xxx) xxx.xxxx", "xxxxxxx", "xxx xxxx", "xxx-xxxx", "xxx.xxxx"}
local valid = {}
for _,v in pairs(numbers) do valid[v] = "true" end
if string.gsub(input, ".+", valid) == "true" then do 
	print("Nice try.")
end
else
	input = string.gsub(input, "%d", "x")
	if string.gsub(input, ".+", valid) == "true" then do print("true") end
	else print("false") end
end
