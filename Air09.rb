#Créez un programme qui décale tous les éléments d’un tableau vers la gauche. Le premier élément devient le dernier à chaque rotation.
#Exemple: 1 2 3 4 -> 2 3 4 1.
#Afficher 'Erreur' et quitter le programme en cas de problèmes d'arguments.

#Méthode.
def rotationToTheLeft(array)
    i = 0
    new_array = []
    array.length.times do
        new_array[i] = array[i + 1]
        i += 1
    end
    new_array[new_array.length - 1] = array[0]
    new_array
end

#Erreur.
if ARGV.size.zero? then
    puts 'Erreur'
    exit
end

array = ARGV

puts rotationToTheLeft(array).join(', ')
#Fin de l'exercice.