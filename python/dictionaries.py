#The inside has to be unique

dogs = {"Figo":9, "Roky":23, "Coco":3}

print(dogs)
print(dogs["Figo"])

for name in dogs.keys():
    print(name)

for name in dogs.items():
    print(name)

for name in dogs.values():
    print(name)