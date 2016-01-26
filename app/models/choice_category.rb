class ChoiceCategory < ActiveRecord::Base
	has_many :choices
	validates_presence_of :name
	validates_uniqueness_of :name
end
