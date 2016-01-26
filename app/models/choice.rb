class Choice < ActiveRecord::Base
	belongs_to :choice_category
	has_many :mood_choices, dependent: :destroy
	has_many :moods, through: :mood_choices
	
	validates_presence_of :name
end
