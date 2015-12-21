FactoryGirl.define do
  factory :mood do
    name { FFaker::Lorem.word }
		description { FFaker::Lorem.paragraph }
  end

end
