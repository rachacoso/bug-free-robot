class MediaItem < ActiveRecord::Base
	has_and_belongs_to_many :arts_types
	has_many :mood_scores, dependent: :destroy
	has_many :moods, through: :mood_scores
	belongs_to :media_type

	accepts_nested_attributes_for :arts_types, :mood_scores, :moods
	
end
