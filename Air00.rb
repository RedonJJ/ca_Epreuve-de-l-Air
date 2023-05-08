#Créer un programme qui découpe une chaîne de caractères en tableau (séparateurs: espaces, tuabulations, retours à la ligne).
#Afficher 'Erreur' et quitter le programme en cas de problème d'arguments.

#Méthode.
def split(string_to_cut, separator)
    i = 0
    string_to_cut.length.times do
    string_to_cut[i] = ',' if string_to_cut[i] == separator
    i += 1
    end
    string_to_cut.split(',')
end

#Erreurs.
if ARGV.length != 1 then
    puts 'Erreur'
    exit
end

puts split("#{ARGV[0]}", ' ')
#Fin de l'exercice.