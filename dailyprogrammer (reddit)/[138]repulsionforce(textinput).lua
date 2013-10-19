--[[ [138]repulsionforce.lua
This program computes the repulsion force for two electrons in 2D space. It assumes that the two particles have the same mass and charge. Note that Colomb's Law uses a constant, but I choose to omit that for the simplicity.

Sample Input (asks for input):
1 -5.2 3.8
1 8.7 -4.1

Sample Output:
0.0039

Taken from http://www.reddit.com/r/dailyprogrammer/comments/1ml669/091713_challenge_138_easy_repulsionforce/
--]]
print("Please enter the 1st particles mass, xpos and ypos: ")
local mass1, xpos1, ypos1 = io.read("*number", "*number","*number")
print("Please enter the 2nd particles mass, xpos and ypos: ")
local mass2, xpos2, ypos2 = io.read("*number", "*number","*number")
local force = (mass1 * mass2)/(math.sqrt((xpos1 - xpos2)^2 + (ypos1 - ypos2)^2))^2  
print("Answer: " .. force)