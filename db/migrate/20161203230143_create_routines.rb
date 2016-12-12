class CreateRoutines < ActiveRecord::Migration
  def change
    create_table :routines do |t|
      t.integer :diagnosis_id
      t.integer :week

      t.timestamps

    end
  end
end
