#!/usr/local/bin/lua
local a = {}
local userinput = io.read()
a[1] = string.match(userinput,'%d*')
a[1] = tonumber(a[1])
a[2] = string.gsub(userinput,'%s+', '')
a[2] = string.match(a[2],'%D+')
a[3] = string.match(userinput,'%d*$')
a[3] = tonumber(a[3])
if a[2] == '+' then                                                   
    answer = a[1] + a[3]                                    
elseif a[2] == '-' then
    answer = a[1] - a[3]
elseif a[2] == '*' then
    answer = a[1] * a[3]
elseif a[2] == 'x' then 
    answer= a[1] * a[3]
elseif a[2] == '/' then
  if a[3] == 0 then
    answer = 'Error (Devision by Zero)'
  else
    answer = a[1] / a[3]
  end
elseif a[2] == ':' then
  if a[3] == 0 then
    answer = 'Error (Devision by Zero)'
  else
    answer = a[1] / a[3]
  end
elseif a[2] == '^' then
 answer = a[1] ^ a[3]
elseif a[2] == '**' then
 answer = a[1] ^ a[3]
else
 answer = 'Undefined error'
end
print(answer)
