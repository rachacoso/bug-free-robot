class CreateMoodScores < ActiveRecord::Migration
  def change
    create_table :mood_scores do |t|
      t.integer :score
      t.boolean :is_on
      t.integer :media_item_id
      t.integer :mood_id

      t.timestamps null: false
    end
  end
end
