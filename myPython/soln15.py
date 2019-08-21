user = input("Give me a long string with multiple words : ")
space = " "

def reverseString(mString) : 
	newlist = mString.split(" ", mString.count(" "))
	newlist.reverse()
	return newlist

print (space.join(reverseString(user)))