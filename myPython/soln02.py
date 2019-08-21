num = input("Give me a #: ")
check = input("Give me a modulo #: ")

if int(num) % int(check) == 0:
	print("Divisible")
else:
	print(check + " doesn't go into " + num)
