palin = raw_input("Give me a string (palindrome prefferable) : ")

if len(palin) % 2 == 0:
	half = palin[0:len(palin)/2]
else:
	half = palin[0:len(palin)/2+1]

nhalf = "".join(reversed(palin[len(palin)/2:len(palin)]))

print half
print nhalf

if half == nhalf:
	print("is palindrome! ")
else:
	print("not :( ")