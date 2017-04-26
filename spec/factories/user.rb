FactoryGirl.define do
  factory :user do
    email           { Faker::Internet.email }
    image           { Faker::Crypto.md5 }
  end
end
