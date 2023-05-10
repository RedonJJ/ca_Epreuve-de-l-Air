#Créez un programme qui trie une liste de nombres. Votre programme devra implémenter l’algorithme du tri rapide (QuickSort).
#Exemple: 6 5 4 3 2 1 -> 1 2 3 4 5 6.
#Afficher 'Erreur' et quitter le programme en cas de problèmes d'arguments.

#Méthode.
def quickSort(array)
    return array if array.size <= 1
    pivot =array.pop
    left = []
    rigth = []
    array.each do |element|
        if element <= pivot then
            left << element
        else rigth << element
        end
    end
    quickSort(left) + [pivot] + quickSort(rigth)
end

#Erreur.
if ARGV.size.zero? then
    puts 'Erreur'
    exit
end

puts quickSort(ARGV).join(' ')
#Fin de l'exercice.