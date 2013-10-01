print("Please enter the 1st particles mass, xpos and ypos: ")
local mass1, xpos1, ypos1 = io.read("*number", "*number","*number")
print("Please enter the 2nd particles mass, xpos and ypos: ")
local mass2, xpos2, ypos2 = io.read("*number", "*number","*number")
local force = (mass1 * mass2)/(math.sqrt((xpos1 - xpos2)^2 + (ypos1 - ypos2)^2))^2  
print("Answer: " .. force)