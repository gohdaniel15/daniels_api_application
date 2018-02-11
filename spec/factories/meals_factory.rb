FactoryBot.define do
  factory :meal do
    sequence :name { |n| "MealName#{n}" }
    byline "A random byline"
  end
end