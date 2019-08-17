num = raw_input("Check Prime: ")

def is_prime(mNum):
	a = []
	for i in range(1, int(mNum)):
		if int(mNum) % i == 0:
			a.append(i)
	return a

if len(is_prime(num)) > 1 :
	print(str(num) + " Is not Prime!")
else :
	print(str(num) + " Is Prime!")