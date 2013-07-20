print("Tristans Mining Turtle Programm V.01a")
print("Was kann ich für sie tun? (autor, mining, stripmining, version):")
command = io.read()
c = tostring(command)
if c == "autor" then
  print("Dieses Skript wurde von Tristan (FreddyderHamster) geschrieben")
elseif c == "version" then
  print("Version V.01a")
else 
  print("Fehler - Befehl nicht bekannt")
end

