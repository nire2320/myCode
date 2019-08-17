a = [1, 2, 2, 3, 5, 6]

def func_s(array) :
	return list(dict.fromkeys(array))

def func_f(array) :
	newArr = []
	for i in array :
		if i not in newArr :
			newArr.append(i)

	return newArr


print(func_s(a))
print(func_f([1,1,1,1,1,2,3,4,4,5,6]))