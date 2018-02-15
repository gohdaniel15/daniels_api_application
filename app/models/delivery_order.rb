class DeliveryOrder < ApplicationRecord

  has_many :order_items

  validates :serving_datetime, presence: true

  def delivery_date
    serving_datetime.localtime.to_datetime.strftime("%Y-%m-%d")
  end

  def delivery_time
    date = serving_datetime.localtime.to_datetime
    distance_from_begin_hour = (date - date.beginning_of_hour) * 24 * 60
    ampm = date.strftime("%p")

    if distance_from_begin_hour >= 30
      "#{date.hour}:30-#{date.hour + 1}:00#{ampm}"
    else
      "#{date.hour}:00-#{date.hour}:30#{ampm}"
    end
  end

end
