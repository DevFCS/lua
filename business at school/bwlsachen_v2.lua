--[[ bwlsachen_v2.lua
Überarbeitete Version.
Berechnet ROS, Kapitalumschlagshäufigkeit, ROI, Gesamtkapitalrendite, ROE, Eigenkapitalquote, wenn man das Jahr, Gesamtkapital (Summe Aktiva), EBIT, Gewinn, Eigenkapital und die Umsatzerlöse angibt.
Das Script nimmt dabei den Input von basfzahlen.csv und rechnet die oben genannten Zahlen aus:

Beispiel Input (basfzahlen.csv):
 
 ;Gesamtvermögen;EBIT;Jahresüberschuss;Eigenkapital;Umsatzerlöse
2011;41263;1522;3506;12700;21599
2012;39463;903;2880;13824;23011

Beispiel Output: 

Jahr: 2011
----

ROS: 7.0466225288208
Kapitalumschlagshaeufigkeit: 0.52344715604779
ROI: 3.6885345224535
ROE: 27.606299212598
Eigenkapitalquote: 30.778178998134



Jahr: 2012
----

ROS: 3.9242101603581
Kapitalumschlagshaeufigkeit: 0.58310315992195
ROI: 2.2882193447026
ROE: 20.833333333333
Eigenkapitalquote: 35.030281529534
--]]
local f = io.open("basfzahlen.csv", "r")
for line in f:lines() do
  local a = {}
  for i in string.gmatch(line, "%d+") do a[#a+1]=i end
  if not a[1] then goto continue end
  a[7] = (a[3]*100)/a[6]
  a[8] = a[6]/a[2]
  a[9] = a[7]*a[8]
  a[10] = (a[4]*100)/a[5]
  a[11] = (a[5]*100)/a[2]
  print("Jahr: " .. a[1])
  print("----\n")
  print("ROS: " .. a[7])
  print("Kapitalumschlagshaeufigkeit: " .. a[8])
  print("ROI: " .. a[9])
  print("ROE: " .. a[10])
  print("Eigenkapitalquote: " .. a[11])
  print("\n\n")
  ::continue::
end 

	