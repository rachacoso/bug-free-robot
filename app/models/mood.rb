class Mood < ActiveRecord::Base
	has_many :mood_scores, dependent: :destroy
	has_many :mood_choices, dependent: :destroy
	has_many :media_items, through: :mood_scores
	has_many :choices, through: :mood_choices

	validates_presence_of :name
	validates_uniqueness_of :name
end
