import os

user = input("Give me a directory path ... ex. /tmp ... : ") 

if os.path.isdir(user):
	print (user + " is a directory\n")
else:
	print (user + " is NOT a directory\n")
