json.id @delivery_order.id
json.delivery_date @delivery_order.delivery_date
json.delivery_time @delivery_order.delivery_time

json.order_items @delivery_order.order_items.includes(:meal).each do |order_item|
  json.name order_item.meal.name
  json.quantity order_item.quantity
  json.total_price order_item.unit_price * order_item.quantity
end
