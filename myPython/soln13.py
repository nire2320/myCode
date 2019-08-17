user = raw_input("Give me # for fibonnaci sequence : ")
a = [0, 1]

def fibb(number) :
	if number == 0 :
		return a[:0]
	if number == 1 :
		return a[:1]
	else :
		for i in range(1, number-1) : 
			a.append(a[i]+a[i-1])
	
	return a


print("Fibbonaci : ")
print(fibb(int(user)))