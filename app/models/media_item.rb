class MediaItem < ActiveRecord::Base
	has_one :arts_type
	has_many :mood_scores
	has_many :moods, through :mood_score
end
