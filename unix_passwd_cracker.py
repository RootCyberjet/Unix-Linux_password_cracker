#***************************************************************
#           NAME - SHIBA BISWAS
#           DESIGNATION - STUDENT
#           INDIA
#***************************************************************


#! /usr/bin/python

import crypt
import sys

def passwd_cracker(HASH,DICTIONARY):
    dict_file = open(DICTIONARY,'r')
    c=0
    for line in dict_file:
        password = line.strip('\n')
        password_hash = crypt.crypt(password,HASH)
        if password_hash == HASH:
            password1 = password
            c+=1
    if c!=0:
        print("Password found : "+password1)
    else:
        print("Password not found.")


password = '/etc/shadow'

passwd_file = open(password,'r')
for line in passwd_file:
    user = line.split(':')[0]
    hash_string = line.split(':')[1].strip('\n')
    print("------------------------------------------------------")
    print("Password for the USER : "+user+"\nHaving HASH_STRING : "+hash_string)
    passwd_cracker(hash_string,"dictionary.txt")
    print("------------------------------------------------------")



