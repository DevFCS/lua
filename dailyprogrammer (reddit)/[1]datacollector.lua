--[[ Easy Challenge #1
Create a program that will ask the users name, age, and reddit username. have it tell them the information back, in the format:

Your name is (blank), you are (blank) years old, and your username is (blank).

For extra credit, have the program log this information in a file to be accessed later.
--]]
local output = assert(io.open("data","a+"))
local a = {}
a[1] = "Your name is "
a[2] = arg[1] or io.read()
a[3] = ", you are "
a[4] = arg[2] or io.read()
a[5] = " years old, and your username is "
a[6] = arg[3] or io.read()
a[7] = "."
local data = table.concat(a)
print(data)
output:write(data)
assert(output:close())