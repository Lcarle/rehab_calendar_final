class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :image
      t.text :description
      t.string :name

      t.timestamps

    end
  end
end
