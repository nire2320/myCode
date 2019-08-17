import random

a = random.sample(range(1,100), random.randint(1,100))
b = random.sample(range(1,100), random.randint(1,100))
c = []

for i in a:
	if i in b:
		c.append(i)

print("array a: " + str(a) + "\n")
print("array b: " + str(b) + "\n")
print("Common: " + str(list(dict.fromkeys(c))) + "\n")