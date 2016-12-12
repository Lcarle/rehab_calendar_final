class CreateInjuries < ActiveRecord::Migration
  def change
    create_table :injuries do |t|
      t.integer :user_id
      t.integer :diagnosis_id
      t.date :injury_date
      t.date :begin_rehab_on

      t.timestamps

    end
  end
end
