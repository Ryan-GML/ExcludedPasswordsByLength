# ExcludedPasswordsByLength
List of bad passwords based on a minimum length. 

# Directions
The `password_filter.sh` is designed to process a text file containing passwords where each password is on a separate line, such as:
```
hello1234
badpassword
myvoiceismypassport
winter2013
```
Simply run password_filter.sh with an input file containing the passwords, the output filename to write, and the minimum number of characters each password should contain. To determine how many lines the output file contains just run `wc -l <outputfilename>`  

The file 10-million-password-list-top-10000000-14chars.txt uses the Meisler file and reduces it to only passwords with 14 characters. This example was done because we commonly set a password minimum of 14 characters - this helps speed up the filter. 


# Other Items of interest
The password_filter.sh file was generated using Bard. It took 3 prompts to produce it in its current form:
- given a text file with a password on each line, write a bash script that creates a new file, with a password on each line but only includes passwords that are more than 14 characters
- can you make this script so that the input filename and the output filename are parameters instead of hard coded
- can you also make the password length an input parameter instead of hardcoded to 14
The resultant script was copied into password_filter.sh. Pretty neat.