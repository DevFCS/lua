a = {}
k = "x"
a[k] = 10
a[20] = "groß"
print(a["x"])
k = 20
print(a[k])
a["x"] = a["x"] + 1
print(a["x"])
