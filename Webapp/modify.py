lookupChar = {'c' : 1,  'd' : 3, 'e' : 5, 'f' : 6, 'g': 8, 'a' : 10, 'b' : 12}
lookupLen = {'sq' : 3, 't' : 4, 'q' : 6, 'dq' : 9, 'c' : 12, 'dc' : 18, 'm' : 24, 'dm' : 36, 'sb' : 48, 'b' : 96}


def modify_music(input):
	new_data = []

	for line in input.splitlines():
		for word in line.split():
			if word[0] is '%':
				## go to next line
				break
			elif lookupLen.has_key(word):
				new_data.append(lookupLen[word])
			elif lookupChar.has_key(word[0]):
				num = lookupChar[word[0]]
				if len(word) is 3:
					print "YAYYY"
					if word[2] == '#':
						num += 1
					elif word[2] == 'b':
						num += (-1)

				new_data.append(num)

			else:
				print "Something wrong!"



	print new_data


	with open ("output1", "wb") as compdata:
	    bytes = bytearray(new_data)
	    compdata.write(bytes)


