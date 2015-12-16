class AddInitialForeignKeys < ActiveRecord::Migration
  def change
		add_foreign_key :media_items, :arts_types
		add_foreign_key :mood_scores, :media_items
		add_foreign_key :mood_scores, :moods
		add_foreign_key :choices, :choice_categories
		add_foreign_key :mood_choices, :moods
		add_foreign_key :mood_choices, :choices
  end
end
