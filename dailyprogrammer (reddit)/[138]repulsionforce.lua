--[[ [138]repulsionforce.lua
This program computes the repulsion force for two electrons in 2D space. It assumes that the two particles have the same mass and charge. Note that Colomb's Law uses a constant, but I choose to omit that for the simplicity.

Sample Input (takes input from "input.txt"):
1 -5.2 3.8
1 8.7 -4.1

Sample Output:
0.0039

Taken from http://www.reddit.com/r/dailyprogrammer/comments/1ml669/091713_challenge_138_easy_repulsionforce/
--]]
local f = io.open("input.txt", "r")
local a = {}
for line in f:lines() do
  for i in string.gmatch(line, "%S+") do a[#a+1]=i end
  if not a[6] then goto continue end
  ::continue::
end
local force = (a[1] * a[4])/(math.sqrt((a[2] - a[5])^2 + (a[3] - a[6])^2))^2
print("Answer: " .. force)
