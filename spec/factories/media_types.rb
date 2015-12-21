FactoryGirl.define do
  factory :media_type do
    name { FFaker::Lorem.word }
		description { FFaker::Lorem.paragraph }
  end

end
