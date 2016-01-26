class MediaType < ActiveRecord::Base
	has_many :media_items

	validates_presence_of :name
	validates_uniqueness_of :name
end
