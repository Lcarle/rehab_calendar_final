# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'exercises.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
puts csv
csv.each do |row|
  puts row.to_hash

  @exercise = Exercise.new
  @exercise.name = row['name']
  @exercise.description = row['description']
  @exercise.image = row['image']
  @exercise.save

  puts "#{@exercise.name} saved"
  end

  puts "There are now #{Exercise.count} in your library."

  require 'csv'

    csv_text = File.read(Rails.root.join('lib', 'seeds', 'routine_exercises.csv'))
    csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
    puts csv
    csv.each do |row|
      puts row.to_hash

      @routine_exercise = RoutineExercise.new
      @routine_exercise.sets = row['sets']
      @routine_exercise.reps = row['reps']
      @routine_exercise.routine_id = row['routine_id']
      @routine_exercise.exercise_id = row['exercise_id']
      @routine_exercise.save
      puts "Routine saved"
    end
      puts "There are now #{RoutineExercise.count}"
