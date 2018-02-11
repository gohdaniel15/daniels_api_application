class OrderItem < ApplicationRecord

  belongs_to :delivery_order
  belongs_to :meal

  validates :serving_date, presence: true
  validates :quantity, presence: true
  validates :unit_price, presence: true

  def delivery_date
    serving_date.localtime.to_datetime.strftime("%Y-%m-%d")
  end

  def delivery_time
    serving_datetime = serving_date.localtime.to_datetime
    distance_from_begin_hour = (serving_datetime - serving_datetime.beginning_of_hour) * 24 * 60
    ampm = serving_datetime.strftime("%p")

    if serving_datetime >= 30
      "#{serving_datetime.hour}:30-#{serving_datetime.hour + 1}:00#{ampm}"
    else
      "#{serving_datetime.hour}:00-#{serving_datetime.hour}:30#{ampm}"
    end
  end

end
