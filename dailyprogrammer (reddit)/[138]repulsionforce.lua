local f = io.open("input.txt", "r")
for line in io.lines("input.txt") do
  local mass1, xpos1, ypos1, mass2, xpos2, ypos2 = f.read("*number","*number","*number","*number","*number","*number")
  if not mass1 then break end
  local force = (mass1 * mass2)/(math.sqrt((xpos1 - xpos2)^2 + (ypos1 - ypos2)^2))^2  
  print("Answer: " .. force)
end 
