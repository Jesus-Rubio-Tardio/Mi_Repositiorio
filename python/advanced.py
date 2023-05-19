'''import clases

clases.Dog.bark()'''

'''
from clases import Dog

Dog.bark()'''

#File creating, reading and writing

file = open("fun.txt", "w")

file.write("Hola que tal")

file = open("fun.txt", "r")

print(file.read())
