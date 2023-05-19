#For

for i in range(5):
    print("Soy Jesus")

'''for x in range(2,7):   #de 2 a 7
    print("Soy Jesus")
'''
favgames = ['GTA', 'FIFA', 'Call of Duty', 'Mario Bros']

for game in favgames:
    print("game: " +game)

''' ejercicio
numbers = [76, 83, 16, 69, 52, 78, 10, 77, 45, 52, 32, 17, 58, 54, 79, 72, 55, 50, 81, 74, 45, 33, 38, 10, 40, 44, 70, 81, 79, 28, 83, 41, 14, 16, 27, 38, 20, 84, 24, 50, 59, 71, 1, 13, 56, 91, 29, 54, 65, 23, 60, 57, 13, 39, 58, 94, 94, 42, 46, 58, 59, 29, 69, 60, 83, 9, 83, 5, 64, 70, 55, 89, 67, 89, 70, 8, 90, 17, 48, 17, 94, 18, 98, 72, 96, 26, 13, 7, 58, 67, 38, 48, 43, 98, 65, 8, 74, 44, 92]

odds = set(numbers)
for number in odds:
    if(number % 2 != 0):
            print(number) '''

age = 27

#while

while age < 100:
    print(age)
    age += 1

guess = int(input("Guess a number betweemn 1 and 10: "))

while guess!= 9:
    guess = int(input("Guess a number betweemn 1 and 10: "))
print("CONGRATS")

#Break, continue, else

