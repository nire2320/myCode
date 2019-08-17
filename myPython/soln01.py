name = raw_input("What's your name? ")
age = raw_input("What's your age? ")

print("Username: " + name)
print("Userage: " + str(age))

number = raw_input("Give me a number ")
i = 0

for i in range(int(number)):
		print("Userage: " + str(age) + " " + str(i+1) + " many times ")
		i += 1