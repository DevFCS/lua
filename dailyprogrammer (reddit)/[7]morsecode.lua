--[[ Easy Challenge #7
Write a program that can translate Morse code in the format of ...---...
A space and a slash will be placed between words. ..- / --.-
For bonus, add the capability of going from a string to Morse code.
Super-bonus if your program can flash or beep the Morse.
This is your Morse to translate:
.... . .-.. .-.. --- / -.. .- .. .-.. -.-- / .--. .-. --- --. .-. .- -- -- . .-. / --. --- --- -.. / .-.. ..- -.-. -.- / --- -. / - .... . / -.-. .... .- .-.. .-.. . -. --. . ... / - --- -.. .- -.--
--]]
local morsealphabet = { ["a"] = ".-", ["b"] = "-...", ["c"] = "-.-.",    ["d"] = "-..", ["e"] = ".", ["f"] = "..-.", ["g"] = "--.", ["h"] = "....", ["i"] = "..", ["j"] = ".---", ["k"] = "-.-", ["l"] = ".-..", ["m"] = "--", ["n"] = "-.", ["o"] = "---", ["p"] = ".--.", ["q"] = "--.-", ["r"] = ".-.", ["s"] = "...", ["t"] = "-", ["u"] = "..-", ["v"] = "...-", ["w"] = ".--", ["x"] = "-..-", ["y"] = "-.--", ["z"] = "--..", [" "] = "/" }
local reversemorsealphabet = {}
for k,v in pairs(morsealphabet) do reversemorsealphabet[v] = k end
local morsedtable = {}
local function morse(x)
     local morsed =  string.gsub(string.lower(x), "%Z", morsealphabet)
     local morsed = string.gsub(morsed, "/", " / ")
     return morsed
end
local function demorse(x)
     local demorsed = string.gsub(x, "%S+", reversemorsealphabet)
     local demorsed = string.gsub(demorsed, "(%a)%s(%a)%s", "%1%2")
     local demorsed = string.gsub(demorsed, "%s+", " ")
     return demorsed
end

print("Do you want to (m)orse or (d)emorse?")
local input = io.read()
if string.lower(input) == "m" then do
      print("What do you want to morse:")
      input2 = io.read()
      print(morse(input2))
end
elseif string.lower(input) == "d" then do
      print("What do you want to demorse:")
      input2 = io.read()
      print(demorse(input2))
end
else 
      print("Invalid character. Please enter 'm' to morse or 'd' to demorse")
end
