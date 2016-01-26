FactoryGirl.define do
  factory :media_item do

		arts_types {[FactoryGirl.create(:arts_type)]}
		moods {[FactoryGirl.create(:mood)]}
  	association :media_type, factory: :media_type

    name { FFaker::Lorem.words(3).join(" ") }
		description { FFaker::Lorem.paragraph }
		times_served { rand(1..10000000) }
		duration { rand(1..100) }

  end

end
