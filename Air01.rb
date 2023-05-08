#Créer un programme qui découpe une chaîne de caractères en tableau en fonction du séprateur donné en 2e argument.
#Afficher 'Erreur' et quitter le programme en cas de problèmes d'arguments.

#Méthode.
def split(string_to_cut, string_separator)
    tableau = string_to_cut[0]
    cancel_separator(tableau, string_separator)
    tableau
end

def cancel_separator(tableau, string_separator)
    tableau.each_line(string_separator, chomp: true) do |element|
        next if tableau[element] == string_separator
        puts tableau[element]
    end
end

#Erreurs.
if ARGV.size!= 2 then
    puts 'Erreur'
    exit
end

string_to_cut = ARGV
string_separator = ARGV[1]

split(string_to_cut, string_separator)
#Fin de l'exercice.
