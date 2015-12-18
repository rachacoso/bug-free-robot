class QuestionGeneratorController < ApplicationController
  def new_question
  	choice_category = ChoiceCategory.all.sample
  	choices = Choice.where(choice_category: choice_category).sample(2)
  	
  	@choice1 = choices[0]
  	@choice2 = choices[1]

  	choices.each do |c|
  		c.times_served ||= 0
  		c.times_served += 1
  		c.save
  	end
  end
end
