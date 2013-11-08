print('Welcome, enter your first number please:')		
local f = io.read()							
print('Please enter an operator ( +, -, *, / ):')			
local op = io.read()							
print('Please enter the second number:' )				
local s = io.read()							
if op == '*' then answer = f * s						
elseif op == '+' then answer = f + s					
elseif op == '-' then answer = f - s					
elseif op == '/' then answer = f / s
else answer = "That isn't a valid operation!"			 
end
print('Your answer: ' .. answer)	
