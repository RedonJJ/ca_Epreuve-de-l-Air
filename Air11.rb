#Afficher un escalier constitué d’un caractère et d’un nombre d’étages donné en paramètre.
#Exemple: 0 5 -> 0
        # ->    OOO
        # ->   OOOOO
        # ->  OOOOOOO
        # -> OOOOOOOOO
#Afficher 'Erreur' et quitter le programme en cas de problèmes d'arguments.

#Méthode.
def showPyramid(character, number)
    number.times do |i|
        print ' ' * (number - i)
        puts character * (2 * i + 1)
    end
end

#Erreur.
if ARGV.size.zero? || ARGV[1].to_i.zero? then
    puts 'Erreur'
    exit
end

showPyramid(ARGV[0], ARGV[1].to_i)