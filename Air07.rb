#Créez un programme qui ajoute à une liste d’entiers triée un nouvel entier tout en gardant la liste triée dans l’ordre croissant. 
#Le dernier argument est l’élément à ajouter.
#Exemple: 1 2 4 "3" -> 1 2 3 4.
#Afficher 'Erreur' et quitter le programme en cas de problèmes d'arguments.

#Méthode.
def insertInSortedArray(array, new_element)
    i = 0
    array.length.times do 
        if array[i] > new_element then
            array.insert(i, new_element)
            break
        end
        i += 1
    end
    array
end

#Erreur.
if ARGV.size <= 1 then
    puts 'Erreur'
    exit
end

array = ARGV
new_element = ARGV[-1]
array.pop

puts insertInSortedArray(array, new_element).join(' ')
#Fin de l'exercice.