-- definiert eine Fakultätsfunktion
function fact (n)
  if n == 0 then
    return 1
  else
    return n * fact(n-1)
  end
end

print("Geben Sie eine Zahl ein:")
a = io.read ("*n") -- eine Zahl einlesen
print(fact(a)) 