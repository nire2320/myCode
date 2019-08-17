num = raw_input("Give me a number: ")
a = []

for i in range(1, int(num)):
	if int(num) % i == 0:
		a.append(i)

print(a)