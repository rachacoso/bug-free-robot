class Choice < ActiveRecord::Base
	belongs_to :choice_category
	has_many :mood_choices
	has_many :moods, through: :mood_choices
end
