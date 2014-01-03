--[[ Easy Challenge #2
An important part of programming is being able to apply your programs, so your challenge for today is to create a calculator application that has use in your life. It might be an interest calculator, or it might be something that you can use in the classroom. For example, if you were in physics class, you might want to make a F = M * A calc.

EXTRA CREDIT: make the calculator have multiple functions! Not only should it be able to calculate F = M * A, but also A = F/M, and M = F/A!
--]]
if not arg[1] then 
	print("What do you want to calculate? (F, m, a)")
	option = string.lower(io.read())
else
	option = string.lower(arg[1])
end
if option == "f" then
	print("Please enter the values for M and A (seperated by space)")
	local m, a = io.read("*n","*n")
	print("F = " .. m*a)
elseif option == "m" then
	print("Please enter the values for F and A (seperated by space)")
	local f, a = io.read("*n","*n")
	print("M = " .. f/a)
elseif option == "a" then
	print("Please enter the values for F and M (seperated by space)")
	local f, m = io.read("*n","*n")
	print("A = " .. f/m)
else
	print("You can only calculate F, m or a")
end
