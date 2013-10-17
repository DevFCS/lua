line = io.read()
n = tonumber(line)
if n == nil then
  error(line .. " ist keine gültige Zahl")
else
  print(n*2)
end