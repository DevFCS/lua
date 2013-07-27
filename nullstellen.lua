print(" Checks if f(x) is Zero in the domain of definition")
print("Function:")								--asking for a function
local fx = io.read()								--gets input
print(fx, type(fx))								--print type of fx
print("Start value: ")							--asking for a start value
local startvalue = tonumber(io.read()) or -5		--gets input, converts it to a number or sets it to -5
print("End value:")								--asking for endvalue
local endvalue = tonumber(io.read()) or 5			--gets input, converts it to a number or sets it to 5
print("Step:")									--asking for a step value
local step = tonumber(io.read()) or 1				--gets input, converts it to a number or sets it to 1
for x = startvalue, endvalue, step do				-- numeric for loop
 print (fx , x)									-- printing fx and x	
end
