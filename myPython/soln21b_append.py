f = open("toText.txt", "a+")

for i in range(2) :
	f.write("Appended line %d\r\n" % (i+1))

f.close()