class CreateMoodChoices < ActiveRecord::Migration
  def change
    create_table :mood_choices do |t|
      t.integer :mood_id
      t.integer :choice_id

      t.timestamps null: false
    end
  end
end
