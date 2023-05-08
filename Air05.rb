#Créez un programme qui est capable de reconnaître et de faire une opération (addition ou soustraction) sur chaque entier d’une liste.
#Exemple: 1 2 3 4 5 "+2" è> 3 4 5 6 7.
#L'opération à afficher sera toujours le denrier élément.
#Afficher 'Erreur' et quitter le programme en cas de problèmes d'arguments.

#Méthode.
def name(list, operation)
    i = 0
    list.length.times do
        list[i] = list[i].to_i
        operation[0] == '+' ? list[i] += operation[1].to_i : list[i] -= opration[1].to_i
    end
    list
end

#Erreur.
if ARGV.size.zero? then
    puts 'Erreur'
    exit
end

puts name(ARGV[0..ARGV.length - 2], ARGV[ARGV.length - 1]).join(' ')
#Fin de l'exercice.