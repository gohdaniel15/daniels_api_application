class OrderItem < ApplicationRecord

  belongs_to :delivery_order
  belongs_to :meal

  validates :serving_date, presence: true
  validates :quantity, presence: true
  validates :unit_price, presence: true

end
