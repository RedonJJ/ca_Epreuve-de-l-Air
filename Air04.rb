#Créez un programme qui affiche une chaîne de caractères en évitant les caractères identiques adjacents.
#Exemple: "Hello milady, bien ou quoi ??" -> Helo milady, bien ou quoi ?
#Afficher 'Erreur' et quitter le programme en cas de problèmes d'arguments.

#Méthode.
def avoidIdenticalCharacters(sentence)
    sentence = sentence.split('')
    i = 0
    sentence.length.times do 
        if sentence[i] == sentence[i + 1] then
            sentence.delete_at(i + 1)
            i -= 1
        end
        i -= 1
    end
    sentence.join('')
end

#Erreur.
if ARGV.length.zero? then
    puts 'Erreur'
    exit
end

puts avoidIdenticalCharacters(ARGV[0])
#Fin de l'exercice.