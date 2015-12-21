FactoryGirl.define do
  factory :choice do

  	association :choice_category, factory: :choice_category

    name { FFaker::Lorem.word }
		times_served { rand(1..10000000) }
		times_selected { rand(1..10000000) }
		# choice_category_id 1
  end

end
