class MediaItem < ActiveRecord::Base
	has_and_belongs_to_many :arts_types
	has_many :mood_scores
	has_many :moods, through: :mood_scores
	belongs_to :media_type
end
