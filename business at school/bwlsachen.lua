#!/usr/local/bin/lua
--[[ bwlsachen.lua
!V2 ist erschienen.
Dies suboptimales BWLscript bestimmt:
ROS, Kapitalumschlagshäufigkeit, ROI, Gesamtkapitalrendite, ROE, Eigenkapitalquote.
Dafür muss man die Folgenen Zahlen einfügen: 
Jahr, Gesamtkapital (Summe Aktiva), EBIT, Gewinn, Eigenkapital und Umsatzerlöse eingeben:

Beispiel Input:

local jahr = 2012	
local gesamtkapital = 39463
local ebit = 903
local gewinn = 2880
local eigenkapital = 13824
local umsatzerloese = 23011

Beispiel Output: 

Jahr: 2012
----

ROS: 3.9242101603581
Kapitalumschlagshaeufigkeit: 0.58310315992195
ROI: 2.2882193447026
Gesamtkapitalrendite: 2.2882193447026
ROE: 20.833333333333
Eigenkapitalquote: 35.030281529534
--]]
local jahr = 2012	
local gesamtkapital = 39463
local ebit = 903
local gewinn = 2880
local eigenkapital = 13824
local umsatzerloese = 23011


local ros = (ebit*100)/umsatzerloese
local kapitalumschlagshaeufigkeit = umsatzerloese/gesamtkapital
local roi = ros*kapitalumschlagshaeufigkeit
local gesamtkapitalrendite = (ebit*100)/gesamtkapital
local roe = (gewinn*100)/eigenkapital
local eigenkapitalquote = (eigenkapital*100)/gesamtkapital

print("Jahr: " .. jahr)
print("----\n")
print("ROS: " .. ros)
print("Kapitalumschlagshaeufigkeit: " .. kapitalumschlagshaeufigkeit)
print("ROI: " .. roi)
print("Gesamtkapitalrendite: " .. gesamtkapitalrendite)
print("ROE: " .. roe)
print("Eigenkapitalquote: " .. eigenkapitalquote)