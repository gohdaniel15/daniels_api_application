class Meal < ApplicationRecord

  has_many :order_items

  validates :name, presence: true
  validates :byline, presence: true

end
