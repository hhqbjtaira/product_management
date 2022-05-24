FactoryBot.define do
  factory :product do
    category_id { Faker::Number.category_id }
    name { Faker::Commerce.name }
    description { Faker::Lorem.description }
  end
end
