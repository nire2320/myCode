import random

i = 1
while int(i) != 0:
	user = raw_input("Give me rock/paper/scissors (1,2,3) : ")
	comp = random.randint(1,3)
	
	if comp ^ int(user) == 0:
			print(str(comp) + " : " + str(user) + " :: It's a tie!")
	elif comp ^ int(user) == 1:
			print(str(comp) + " beats " + str(user) + " :: You lose!")
	elif comp ^ int(user) == 2:
			print(str(user) + " beats " + str(comp) + " :: You win!")

	i = raw_input("Play again? Yes = 1, No = 0 : \n")
