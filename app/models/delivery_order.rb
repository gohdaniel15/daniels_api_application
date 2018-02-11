class DeliveryOrder < ApplicationRecord

  has_many :order_items

  validates :serving_datetime, presence: true

end
