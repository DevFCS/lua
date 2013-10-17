--[[ [138]repulsionforce.lua
!!DOESNT WORK, WILL BE REWORKED!!
This program computes the repulsion force for two electrons in 2D space. It assumes that the two particles have the same mass and charge. Note that Colomb's Law uses a constant, but I choose to omit that for the simplicity.

Sample Input (takes input from "input.txt"):
1 -5.2 3.8
1 8.7 -4.1

Sample Output:
0.0039

Taken from http://www.reddit.com/r/dailyprogrammer/comments/1ml669/091713_challenge_138_easy_repulsionforce/
--]]
local f = io.open("input.txt", "r")
for line in io.lines("input.txt") do
  local mass1, xpos1, ypos1, mass2, xpos2, ypos2 = f.read("*number","*number","*number","*number","*number","*number")
  if not mass1 then break end
  local force = (mass1 * mass2)/(math.sqrt((xpos1 - xpos2)^2 + (ypos1 - ypos2)^2))^2  
  print("Answer: " .. force)
end 
