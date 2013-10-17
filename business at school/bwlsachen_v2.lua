local f = io.open("basfzahlen.csv", "r")
for line in f:lines() do
  local a = {}
  for i in string.gmatch(line, "%d+") do a[#a+1]=i end
  if not a[1] then goto continue end
  a[7] = (a[3]*100)/a[6]
  a[8] = a[6]/a[2]
  a[9] = a[7]*a[8]
  a[10] = (a[4]*100)/a[5]
  a[11] = (a[5]*100)/a[2]
  print("Jahr: " .. a[1])
  print("----\n")
  print("ROS: " .. a[7])
  print("Kapitalumschlagshaeufigkeit: " .. a[8])
  print("ROI: " .. a[9])
  print("ROE: " .. a[10])
  print("Eigenkapitalquote: " .. a[11])
  print("\n\n")
  ::continue::
end 

	