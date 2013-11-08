-- simple calculator script you'll find in the tutorials
print('Welcome, enter your first number please:')		-- pretty self-explanatory. Prints Welcome, enter your first number please:'
local f = io.read(*n)							-- gets the user input and assigns it to the local variable "f". the "*n" in "io.read(*n)" tells lua that you want a number instead of a string.
print('Please enter an operator ( +, -, *, / ):')			-- same deal as line 2. It asks for an operator  
local op = io.read()							--  fetches the operator. This time we don't want a number. The default type of response from io.read() is a string
print('Please enter the second number':)				-- you get it..
local s = io.read(*n)							-- same as in line 3. 

--Now we got the user input - time to process it

if op == '*' then answer = f * s						--checks if op (the variable we got earlier is "+". If it matches it will multiply f and s
elseif op == '+' then answer = f + s					-- same deals as line 11
elseif op == '-' then answer = f - s					-- ^
elseif op == '/' then answer = f / s
else answer = "That isn't a valid operation!"			-- This catches everything which doesn't fit the above 
end
print('Your answer: ' .. answer)					-- prints the answer
