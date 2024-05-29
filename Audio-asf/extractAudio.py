# Author: Bunkai
# Python v. 3.7.3 

import os
import sys

# Working-folder path
dir_path = "./"

# creates folder to save new files
# os.system("mkdir neWFiles \n")

ptr = 0 	# Address of the data we want to extract

# Use the starting offset to see if it's a new file: 0x5343486C

magicNumberINI = bytes.fromhex('5343486C') # SCHI
magicNumberEND = bytes.fromhex('5343456C') # SCEI

with open("audpbpe.big", mode="rb") as aud_file:		# Open the source rom
	aud_file.seek(ptr)

	printedFiles = 0
	offset = 0
	
	read_elem = aud_file.read(4)

	while read_elem is not None:
		offset = ptr
		name = 'audio' + str(printedFiles) + 'offs0x' + str(bytes.fromhex(offset)) + '.asf'
		
		while read_elem != magicNumberINI:
			read_elem=aud_file.read(4)
			
		
		with open(name,'wb') as obtained_file:	# Open the target file		
		
			while read_elem != magicNumberEND:		# Loop, to do the copying stuff 
				write_elem=obtained_file.write(read_elem)
				
				read_elem=aud_file.read(4)

			# write the end code for the asf file				
			write_elem=obtained_file.write(read_elem)
			write_elem=obtained_file.write(bytes.fromhex('08'))
		printedFiles += 1;
		
	print("Number of files extracted: %i", printedFiles)	
# close both, rom and new created file
aud_file.close()
obtained_file.close()

# Move the new created file to the previously created folder
# os.system("move " + "copy.gba" + " ./neWFiles/audio.asf \n")
