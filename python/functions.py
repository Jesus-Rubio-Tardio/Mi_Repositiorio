'''

def hello():
    \''' Funcion hello world \'''
    print("Hello World")
    print("It smells nice")


hello()


pointspossible = 100
Name = input("Whats your name? : ")

def grades(a):
    if score/a>= 0.9:
        print("el estudiante {} ha sacado una A".format(Name))
    elif score/a>= 0.8:
        print("el estudiante {} ha sacado una B".format(Name))
    elif score/a>= 0.7:
        print("el estudiante {} ha sacado una C".format(Name))
    elif score/a>= 0.6:
        print("el estudiante {} ha sacado una D".format(Name))
    else:
        print("el estudiante {} ha sacado una F (suspenso)".format(Name))

try:
    score = int(input("Which is your score at the test? : "))
    grades(pointspossible)
except Exception:
    print("Please set a correct score")

'''
def addtwo(num1, num2)->int: #la -> es por si queremos incluir el tipo de dato q retornamos
    total = num1+num2
    return total

print(addtwo(8,9))

def madlib(name, verb, noun):
    print(name+ " was " + verb + " with a " + noun + "!")

madlib("Jesus", "running", "new smartwatch")
madlib(noun="Jesus", verb="running", name="new smartwatch")