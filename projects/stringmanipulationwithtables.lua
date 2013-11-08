local f = io.open("test", r)
local o = io.output("test2", Test)
local a = { ["Tristan"] = "[REDACTED]", ["Kappa"]="idiot"}
local i = {}
for line in f:lines() do
   local t = string.gsub(line,"%a+",a)
  i[#i+1] = t
  end
 io.write(table.concat(i, "\n"))

