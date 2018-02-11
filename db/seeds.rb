Rake::Task['db:reset'].invoke

puts "Creating 10 meals..."
10.times do
  prefix = FFaker::Food.ingredient
  suffix = FFaker::Food.meat
  name = "#{prefix} #{suffix}"
  byline_1 = FFaker::Food.unique.ingredient
  byline_2 = FFaker::Food.unique.ingredient
  byline = "#{prefix}, #{byline_2}, #{byline_1}"

  Meal.create!(name: name, byline: byline)
end

puts "Creating 5 Delivery Orders..."
5.times do
  DeliveryOrder.create!(serving_datetime: DateTime.current) do |delivery_order|
    rand(1..5).times do
      delivery_order.order_items.build(
        meal: Meal.find(rand(1..10)),
        quantity: rand(1..5),
        unit_price: rand(500..10000),
        serving_date: DateTime.current,
      )
    end
  end
end

puts "Done"