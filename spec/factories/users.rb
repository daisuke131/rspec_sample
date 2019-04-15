FactoryBot.define do
  factory :user do
    _account = Faker::Internet.username
    sequence(:account) { |n| "#{_account}_#{n}" }
    name { Faker::Name.name }
    sequence(:email) { |n| Faker::Internet.email("#{_account}_#{n}") }

    trait :with_user_detail do
      user_detail
    end
  end
end
