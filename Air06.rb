#Créez un programme qui supprime d’un tableau tous les éléments qui ne contiennent pas une autre chaîne de caractères.
#Afficher 'Erreur' et quitter le programme en cas de problèmes d'arguments.

#Méthode.
def controlPass(list_of_name, index)
    list_of_name.delete_if { |element| element.to_s.downcase.match(/#{index}/) } 
    list_of_name.join(', ')
end

#Erreur.
if ARGV.size <= 1 then 
    puts 'Erreur'
    exit
end

list_of_name = ARGV
index = ARGV[-1]

puts controlPass(list_of_name, index)
#Fin de l'exercice.