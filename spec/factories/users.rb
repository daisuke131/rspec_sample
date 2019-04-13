FactoryBot.define do
  factory :user do
    account { Faker::Internet.username }
    name { Faker::Name.name }
    email { Faker::Internet.email }
  end
end
