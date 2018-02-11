require 'rails_helper'

RSpec.describe OrderItem, type: :model do

  it { is_expected.to belong_to :delivery_order }
  it { is_expected.to belong_to :meal }

  it { is_expected.to validate_presence_of :serving_date }
  it { is_expected.to validate_presence_of :quantity }
  it { is_expected.to validate_presence_of :unit_price }

end
