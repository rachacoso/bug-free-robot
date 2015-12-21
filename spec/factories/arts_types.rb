FactoryGirl.define do
  factory :arts_type do
    name { FFaker::Lorem.word }
		description { FFaker::Lorem.paragraph }
  end

end
