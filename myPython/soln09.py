import random

guess = random.randint(1,9)
user = raw_input("Guess the number! [0-9] : ")
guess_num = 0

while guess != int(user) :
	if guess < int(user) :
		user = raw_input("Too High! Guess again : ")
	else :
		user = raw_input("Too Low! Guess again : ")
	guess_num += 1

print("You got it in " + str(guess_num) + " Guess(es)! :: " + str(user))