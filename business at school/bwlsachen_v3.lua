local inp = assert(io.open(arg[1] or "basfzahlen.csv", "r"))
local out = assert(io.open(arg[2] or "fbasfzahlen.csv", "w"))
local csv = {}
function toCSV (t)
  local s = ""
  for _,p in pairs(t) do
    s = s .. ";" .. escapeCSV(p)
  end
  return string.sub(s, 2)      
end

function escapeCSV (s)
  if string.find(s, '[,"]') then
    s = '"' .. string.gsub(s, '"', '""') .. '"'
  end
  return s
end

for line in inp:lines() do
  local a = {}
  for i in string.gmatch(line, "%d+") do a[#a+1]=i end
  if not a[1] then goto continue end
  a[7] = (a[3]*100)/a[6]
  a[8] = a[6]/a[2]
  a[9] = a[7]*a[8]
  a[10] = (a[4]*100)/a[5]
  a[11] = (a[5]*100)/a[2]
  csv[#csv+1] = toCSV(a)
  ::continue::
end
table.insert(csv, 1, "Jahre;Gesamtvermoegen;EBIT;Jahresueberschuss;Eigenkapital;Umsatzerloese;ROS;Kapitalsumschlagshäufigkeit;ROI;ROE;Eigenkapitalquote") 
data = table.concat(csv, "\n")
out:write(data)
assert(out:close())

