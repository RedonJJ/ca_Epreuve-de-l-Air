#Créez un programme qui transforme un tableau de chaînes de caractères en une seule chaîne de caractères. 
#Espacés d’un séparateur donné en dernier argument au programme.
#Exemple: "je" "test" "des" "trucs" -> "je test des trucs"
#Afficher 'Erreur' et quitter le programme en cas de problèmes d'arguments.

#Méthodes.
def concat(array_of_string, separator)
    i = 0
    string = ''
    array_of_string.length.times do
        string += array_of_string[i]
        string += separator if i < array_of_string.length - 1
        i += 1
    end
    string
end

#Erreurs.
if ARGV.length.zero? then
    puts 'Erreur'
    exit
end

separator = ARGV[ARGV.length - 1]
ARGV.delete_at(ARGV.length - 1)

puts concat(ARGV, separator)
#Fin de l'exercice.