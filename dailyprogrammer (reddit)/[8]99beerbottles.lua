--[[ Easy Challenge #8
Write a program that will print the song "99 bottles of beer on the wall".
For extra credit, do not allow the program to print each loop on a new line.
--]]
for i=99,1, -1 do
    if i == 1 then do io.write("Go to the store, get some more! ") end
    else io.write(i .. " bottles of beer on the wall. " .. i .. " bottles of beer, you take one down, pass it around. ") end
end
