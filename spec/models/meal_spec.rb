require 'rails_helper'

RSpec.describe Meal, type: :model do

  it { is_expected.to have_many :order_items }

  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :byline }

end
