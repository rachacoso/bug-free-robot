FactoryGirl.define do
  factory :admin_user do
    email { FFaker::Internet.email }
    password "12345678"
    password_confirmation "12345678"
    # username { FFaker::Lorem.word }
  end

end
