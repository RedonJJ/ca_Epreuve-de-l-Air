#Créez un programme qui fusionne deux listes d’entiers triées en les gardant triées, les deux listes seront séparées par un “fusion”.
#Exemple: 10 20 30 fusion 15 25 35 -> 10 15 20 25 30 35.
#Afficher 'Erreur' et quitter le programme en cas de problèmes d'arguments.

#Méthode.
def sortedFusion(array1, array2)
     i = 0
     j = 0
     merged_array = []
     while i < array1.length && j < array2.length
        if array1[i] < array2[j] then
            merged_array << array1[i]
            i += 1
        else
            merged_array << array2[j]
            j += 1
        end
    end
    merged_array << array1[i..] if i < array1.length
    merged_array << array2[j..] if j < array2.length
    merged_array.flatten
end

#Erreurs.
if ARGV.size <= 1 || !ARGV.include?('fusion') then
    puts 'Erreur'
    exit
end

array1 = ARGV[0..ARGV.index('fusion') - 1]
array2 = ARGV[ARGV.index('fusion') + 1..]

puts sortedFusion(array1, array2).join(' ')
#Fin de l'exercice.