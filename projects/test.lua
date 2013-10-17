local f = io.open("bwlinput.csv", "r")
local all = {}
for line in io.lines("bwlinput.csv") do
  --line = string.gsub(line, ";", " ")
  --print(line)
  for i in string.gmatch(line, "%d+") do all[#all+1] = i end
  for key,value in pairs(all) do print(key,value) end
end