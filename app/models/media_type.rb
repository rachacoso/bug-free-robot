class MediaType < ActiveRecord::Base
	has_many :media_items

	validates_presence_of :name
end
