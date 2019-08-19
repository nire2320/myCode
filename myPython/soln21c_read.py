f = open("toText.txt", "r")

if f.mode == 'r':
	contents = f.read()
	
	words = contents.split()
	for i in words :
		try :
			int(i)
			if int(i) % 2 == 0 :
				print("Line # : " + i + " Is even!")
		except :
			pass

	print(contents)