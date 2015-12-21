FactoryGirl.define do
  factory :choice_category do
    name { FFaker::Lorem.word }
		description { FFaker::Lorem.paragraph }
  end

end
