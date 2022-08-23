FactoryBot.define do
  factory :post do
    author { Faker::Book.author }
    # body   { Faker::Lorem.paragraph }
  end
end
