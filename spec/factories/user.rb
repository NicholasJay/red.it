FactoryGirl.define do
  factory :user do
    username { Faker::Name.name }
    email { Faker::Internet.email } 
    password "1234"
    password_confirmation "1234"
  end
end