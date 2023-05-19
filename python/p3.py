
import operator
import sys

#Leemos el archivo

sys.argv

file = open(sys.argv[1], "r")

text = file.read()

file.close()


#Contamos las palabras totales

words = {}

for word in text.split():
    if word.lower() in words:
        words[word.lower()] +=1 

    else:
        words[word.lower()] = 1

sortedwords = sorted(words.items(), key = operator.itemgetter(1), reverse=True)



#Reescribimos en un nuevo archivo

file = open(sys.argv[1][:-4]+"-count" +sys.argv[1][-4:], "w")

file.write("Total words - {}\nUnique words - {}\n\n".format(len(text.split()), len(sortedwords)))
for info in sortedwords:
    file.write("{} - {}\n".format(info[0], info[1]))


file.close()

print("\nDone!")
