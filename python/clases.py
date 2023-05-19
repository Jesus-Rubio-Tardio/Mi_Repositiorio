

class Dog: 
    
    def __init__(self, name, age, color):
        self.name = name
        self.age = age
        self.color = color
    def bark():
        print("Woof woof")
    def barkbye(self):
        print("Bye")

class Bulldog(Dog):
    def growl(self):
        print("grrr")

dog1 = Bulldog("Roky", 9, "black")
print(dog1.name)
dog1.growl()
'''
dog1 = Dog("Roky", 9, "black")
Dog.bark()
dog1.barkbye()
print(dog1.name)'''