print(" Checks if f(x) is Zero in the domain of definition")
print("Function:")
local fx = tonumber(io.read()) 
print(fx, type(fx))
print("Start value: ")
local startvalue = tonumber(io.read()) or -5
print("End value:")
local endvalue = tonumber(io.read()) or 5
print("Step:")
local step = tonumber(io.read()) or 1
for x = startvalue, endvalue, step do
 print (fx , x)
end
