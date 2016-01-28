class Choice < ActiveRecord::Base
	belongs_to :choice_category
	has_many :mood_choices, dependent: :destroy
	has_many :moods, through: :mood_choices
	
	validates_presence_of :name
	validates_uniqueness_of :name
	validates_presence_of :choice_category

	# class methods
	def self.get_set
		# select 3 random categories
		choice_category = ChoiceCategory.limit(3).order("RANDOM()")
		choices = Hash.new
		choice_category.each do |c|
			choices[c.name] = self.where(choice_category_id: c).limit(2).order("RANDOM()")
		end
		return choices
	end

	# json
	def as_json(options={})
	  super(:only => [:id,:name,:choice_category_id]
	  )
	end

end
