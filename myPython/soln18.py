import random

rand_0 = random.randint(0,9)
rand_1 = random.randint(0,9)
rand_2 = random.randint(0,9)
rand_3 = random.randint(0,9)

rand_arr = [rand_0, rand_1, rand_2, rand_3]
matching = [0, 0, 0, 0]

user = raw_input("Give a random 4 digit guess for cows/bulls game : ")

while sum(matching) < 8 :
	i = 0
	cows = 0
	bulls = 0

	while i < len(rand_arr) :
		if int(user[i]) == rand_arr[i] :
			matching[i] = 2
			cows += 1
		elif int(user[i]) in rand_arr :
			matching[i] = 1
			bulls += 1
		else :
			matching[i] = 0
		i += 1

	if sum(matching) < 8 :
		user = raw_input(str(cows) + " cows, " + str(bulls) + " bulls\n")

print("You've got it! ANS:: " + str(rand_arr))
 