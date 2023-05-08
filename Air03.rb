#Créer un programme qui retourne la valeur d'une liste qui n'a pas de paire.
#Exemple: 1 2 3 4 5 4 3 2 1 -> 5 || bonjour monsieur bonjour -> monsieur.

#Méthode.
def findIntruder(list)
    list.each do |element|
        next if list.count(element) > 1
        return element
    end
end

#Erreur.
if ARGV.size.zero? then
    puts 'Erreur'
    exit
end

puts findIntruder(ARGV)
#Fin de l'exercice.
