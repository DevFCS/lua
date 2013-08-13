#!/usr/local/bin/lua
--[=[ calc.lua
This program is basic calculator that can handle 2 numbers. 
--]=]
local a = {}                                                          -- local table
local userinput = io.read()                                           -- getting userinput (e.g. /calc 1+1)
--print(userinput, type(userinput))                                      prints the input and type of input (debugging)
a[1] = string.match(userinput,'%d*')                                  -- getting the first part (e.g. 1)
a[1] = tonumber(a[1])                                                 -- converting a[1] to a number
a[2] = string.gsub(userinput,'%s+', '')                               -- replacing space with nothing
a[2] = string.match(a[2],'%D+')                                       -- getting all non numbers, the opterator in this case
a[3] = string.match(userinput,'%d*$')	                                -- should get the 2nd number
a[3] = tonumber(a[3])                                                 -- converting a[3] to a number
--print(a[1], a[2], a[3], type(a[1]), type(a[2]), type(a[3]))            printing a[1]-a[3] for debugging
if a[2] == '+' then                                                   
  print(a[1] + a[3])                                    
  return a[1] + a[3]
elseif a[2] == '-' then
  print(a[1] - a[3])
  return a[1] - a[3]
elseif a[2] == '*' then
  print(a[1] * a[3])
  return a[1] * a[3]
elseif a[2] == 'x' then
  print(a[1] * a[3])
  return a[1] * a[3]  
elseif a[2] == '/' then
  if a[3] == 0 then
    print('Error')
    return Error
  else
    print(a[1] / a[3])
    return a[1] / a[3]
  end
elseif a[2] == ':' then
  if a[3] == 0 then
    print('Error')
    return Error
  else
    print(a[1] / a[3])
    return a[1] / a[3]
  end
elseif a[2] == '^' then
  print(a[1] ^ a[3])
  return a[1] ^ a[3]
elseif a[2] == '**' then
  print(a[1] ^ a[3])
  return a[1] ^ a[3]
else
 print('Error')
end
