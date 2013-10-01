#!/usr/local/bin/lua
local f = io.open("input.txt", "r")
local i = 0
for line in io.lines("input.txt") do
  i = i + 1  
  local mass, xpos, ypos = f:read("*number", "*number","*number")
  if not mass then break end
  if i == 1 then a = {mass, xpos, ypos} 
  else b = {mass, xpos, ypos} end
  for k,v in pairs(a) do print(k,v) end 
  for k,v in pairs(b) do print(k,v) end
end