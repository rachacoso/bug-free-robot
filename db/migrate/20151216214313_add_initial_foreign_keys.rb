class AddInitialForeignKeys < ActiveRecord::Migration
  def change
		add_foreign_key :arts_types_media_items, :arts_types, on_delete: :cascade
		add_foreign_key :arts_types_media_items, :media_items, on_delete: :cascade
		add_foreign_key :choices, :choice_categories
		add_foreign_key :media_items, :media_types
		add_foreign_key :mood_scores, :media_items, on_delete: :cascade
		add_foreign_key :mood_scores, :moods, on_delete: :cascade
		add_foreign_key :mood_choices, :moods, on_delete: :cascade
		add_foreign_key :mood_choices, :choices, on_delete: :cascade
  end
end
