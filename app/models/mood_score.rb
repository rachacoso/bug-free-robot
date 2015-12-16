class MoodScore < ActiveRecord::Base
	belongs_to :media_item
	belongs_to :mood
end
