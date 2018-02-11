require 'rails_helper'

RSpec.describe DeliveryOrder, type: :model do

  it { is_expected.to have_many :order_items }

  it { is_expected.to validate_presence_of :serving_datetime }

end
