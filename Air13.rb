# ***** Meta exercice *****
# Créez un programme qui vérifie si les exercices de votre épreuve de l’air sont présents dans le répertoire,
# et qu’ils fonctionnent (sauf celui là). Créez au moins un test pour chaque exercice.

# Exemple : ruby exo.rb =>
# air00 (1/3) : success
# air00 (2/3) : success
# air00 (3/3) : success
# air01 (1/2) : success
# air01 (2/2) : failure
# air02 (1/1) : success
# ...
# Total success: (19/25)

# Bonus : trouvez le moyen d’utiliser du vert et du rouge pour rendre réussites et échecs plus visibles.

class CorrectionExercise

  def self.green(text)
    "\e[32m#{text}\e[0m"
  end

  def self.red(text)
    "\e[31m#{text}\e[0m"
  end

  def self.checkExercise(exercise_number, command)
    @result = 0
    @a = 0
    output = `#{command}`
    expected_outputs = {
      'Air00' => %W[Bonjour\n les\n gars\n],
      'Air01' => ["Crevette magique dans \n", " mer des étoiles\n"],
      'Air02' => ["Je teste des trucs\n"],
      'Air03' => %W[5\n monsieur\n],
      'Air04' => ["Helo milady, bien ou quoi ?\n"],
      'Air05' => ["3 4 5 6 7\n", "5 6 7 15\n"],
      'Air06' => ["Michel\n", "Michel, Thérèse, Benoit\n"],
      'Air07' => ["1 2 3 4\n", "10 20 30 33 40 50 60 70 90\n"],
      'Air08' => ["10 15 20 25 30 35\n"],
      'Air09' => ["Albert, Thérèse, Benoit, Michel\n"],
      'Air10' => ["Je danse le mia\n", "Je danse le mia\n"],
      'Air11' => %W[O\n OOO\n OOOOO\n OOOOOOO\n OOOOOOOOO\n],
      'Air12' => ["1 2 3 4 5 6\n"]
    }
    expected_outputs[exercise_number].each do |expected_output|
      if output.include?(expected_output)
        puts "#{exercise_number} (#{@a += 1}/#{expected_outputs[exercise_number].length}) : #{@success}"
        @result += 1
      else
        puts "#{exercise_number} (#{@a += 1}/#{expected_outputs[exercise_number].length}) : #{@failure}"
      end
    end
    @result
  end

  def self.runExercises
    total_success = 0

    exercises = [
      ['Air00', 'ruby Air00.rb "Bonjour les gars"'],
      ['Air01', 'ruby Air01.rb "Crevette magique dans la mer des étoiles" "la"'],
      ['Air02', 'ruby Air02.rb "Je" "teste" "des" "trucs" " "'],
      ['Air03', 'ruby Air03.rb 1 2 3 4 5 4 3 2 1 && ruby Air03.rb bonjour monsieur bonjour'],
      ['Air04', 'ruby Air04.rb "Hello milady,  bien ou quoi ??"'],
      ['Air05', 'ruby Air05.rb 1 2 3 4 5 "+2" && ruby Air05.rb 10 11 12 20 "-5"'],
      ['Air06', 'ruby Air06.rb "Michel" "Albert" "Thérèse" "Benoit" "t" && ruby Air06.rb "Michel" "Albert" "Thérèse" "Benoit" "a"'],
      ['Air07', 'ruby Air07.rb 1 3 4 2 && ruby Air07.rb 10 20 30 40 50 60 70 90 33'],
      ['Air08', 'ruby Air08.rb 10 20 30 fusion 15 25 35'],
      ['Air09', 'ruby Air09.rb "Michel" "Albert" "Thérèse" "Benoit"'],
      ['Air10', 'cat a.txt && ruby Air10.rb "a.txt"'],
      ['Air11', 'ruby Air11.rb O 5'],
      ['Air12', 'ruby Air12.rb 6 5 4 3 2 1']
    ]
    @success = green('success')
    @failure = red('faillure')
    exercises.each do |exercise|
      exercise_result = checkExercise(exercise[0], exercise[1])
      total_success += exercise_result
    end

    puts "Total success: (#{total_success}/25)"
  end
end

CorrectionExercise.runExercises
#Fin de l'exercice.