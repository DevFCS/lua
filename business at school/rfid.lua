local cdate = "07.03.2014"
local sachen = {}
local function adddate()
  print("An welchen Tag wollen sie an etwas erinnert werden:")
  local pdate = "07.03.2014"
  print("An welche(n) Sache(n) wollen sie erinnert werden:")
  local sachen = { [pdate] = io.read()}
  return sachen, pdate
end
print("Was wollen sie tun?")
local option = io.read()
if option == "t" then adddate()
  local sachen, pdate = adddate()
end
--[[
elseif option == "l" then do
  for k,v in ipairs(sachen) do print(k,v) end
else print("Befehl nicht bekannt") end
--]]
if sachen[cdate] ~= nil then print("Am " .. cdate .. " brauchst du '" .. sachen[cdate] .. "'.") 
else print("Heute brauchen sie nichts")
end
