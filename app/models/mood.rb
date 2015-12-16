class Mood < ActiveRecord::Base
	has_many :mood_scores
	has_many :mood_choices
	has_many :media_items, through :mood_score
	has_many :choices, through :mood_choice
end
