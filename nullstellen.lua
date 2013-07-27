print(" Checks if f(x) is Zero in the domain of definition")
print("Function:")								--asking for a function
local fx = io.read()								--gets input
print(fx, type(fx))								--print type of fx
print("Start value: ")							--asking for a start value
local startvalue = io.read(*n) or -5				--gets inpu or sets it to -5
print("End value:")								--asking for endvalue
local endvalue = io.read(*n) or 5					--gets input or sets it to 5
print("Step:")									--asking for a step value
local step = io.read(*n) or 1						--gets input or sets it to 1
for x = startvalue, endvalue, step do				-- numeric for loop
print (fx, x)									-- printing fx and x	
end
