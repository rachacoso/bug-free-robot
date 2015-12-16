class MoodChoice < ActiveRecord::Base
	belongs_to :mood
	belongs_to :choice
end
