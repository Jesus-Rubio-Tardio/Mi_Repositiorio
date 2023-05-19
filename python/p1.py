#Notas

pointspossible = 30
score = 23
Name = "Jesus"
 
'''
 A 100-90%
 B 89-80%
 C 79-70%
 D 69-60%
 F 59-0%
 '''

 #Print the student name and what they got

if score/pointspossible>= 0.9:
    print("el estudiante {} ha sacado una A".format(Name))
elif score/pointspossible>= 0.8:
    print("el estudiante {} ha sacado una B".format(Name))
elif score/pointspossible>= 0.7:
    print("el estudiante {} ha sacado una C".format(Name))
elif score/pointspossible>= 0.6:
    print("el estudiante {} ha sacado una D".format(Name))
else:
    print("el estudiante {} ha sacado una F (suspenso)".format(Name))
