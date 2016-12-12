class CreateRoutineExercises < ActiveRecord::Migration
  def change
    create_table :routine_exercises do |t|
      t.integer :exercise_id
      t.integer :reps
      t.integer :sets
      t.integer :routine_id
      t.string :name

      t.timestamps

    end
  end
end
