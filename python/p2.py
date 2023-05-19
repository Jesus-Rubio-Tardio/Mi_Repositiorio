#Hangman

lives = 5
word =list('apple') 
winner = False
guess = ["_"] * len(word)
wrong = []

def imprimir():
    print("\nVidas: " +str(lives))
    print("Letras incorrectas: ", end="")
    for x in range(len(wrong)):
        if x == len(wrong) -1:
            print(wrong[x], end="")
        else:
            print(wrong[x], end="")
    print("")
    for x in range(len(guess)):
        if x==len(guess)-1:
            print(guess[x], end="")
        else:
            print(guess[x], end="")
    print("")

def askforletter():
    palabra = input("Introduzca una letra: ").lower()
    correct = False
    for x in range(len(word)):
        if palabra == word[x]:
            guess[x]= palabra
            correct = True
    if correct:
        print("Has adivinado una letra!")
    else:
        print("La letra no esta en la palabra")
        wrong.append(palabra)
        global lives 
        lives -= 1

def correcto():
    if "_" not in guess:
        global winner
        winner = True


while lives>0 and winner == False:
    imprimir()
    askforletter()
    correcto()

if lives<=0:
    print("Has perdido, la palabra era: " +word)
else: 
    print("apple\nCongrats, has ganado con "+ str(lives) + " vida(s) restante(s)")

