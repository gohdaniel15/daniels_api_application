FactoryBot.define do
  factory :order_item do
    association :delivery_order, factory: :delivery_order
    association :meal, factory: :meal
    quantity { rand(1..5) }
    unit_price { rand(500..10000) }
    serving_date DateTime.current
  end
end