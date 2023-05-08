#Créez un programme qui affiche le contenu d’un fichier donné en argument.
#Afficher 'Erreur' et quitter le programme en cas de problèmes d'arguments ou de fichier inaccessible.

#Méthode.
def showContent(file)
    #On utilise 'r' pour lire (read) en anglais)) le contenu du fichier "Air10.txt".
    File.open(file, 'r') do |i|
        i.each_line do |line|
            puts line
        end 
    end
end

#Erreur.
if ARGV.size.zero? || !File.exist?(ARGV[0]) then
    puts 'Erreur'
    exit
end

showContent(ARGV[0])
#Fin de l'exercice.