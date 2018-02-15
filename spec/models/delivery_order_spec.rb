require 'rails_helper'

RSpec.describe DeliveryOrder, type: :model do

  it { is_expected.to have_many :order_items }
  it { is_expected.to validate_presence_of :serving_datetime }

  describe '#delivery_date' do
    let(:delivery_order) { create(:delivery_order, serving_datetime: DateTime.new(2018, 2, 9)) }

    it 'should return the correct format' do
      expect(delivery_order.delivery_date).to eq('2018-02-09')
    end
  end

  describe '#delivery_time' do
    context 'in the am' do
      context 'when time is before the half hour' do
        parsed_time = DateTime.parse('09 Feb 2018 10:29:00 +0800')

        let(:delivery_order) { create(:delivery_order, serving_datetime: parsed_time) }

        it 'should return the correct format' do
          expect(delivery_order.delivery_time).to eq('10:00-10:30AM')
        end
      end

      context 'when time is after the half hour' do
        parsed_time = DateTime.parse('09 Feb 2018 10:31:00 +0800')

        let(:delivery_order) { create(:delivery_order, serving_datetime: parsed_time) }

        it 'should return the correct format' do
          expect(delivery_order.delivery_time).to eq('10:30-11:00AM')
        end
      end
    end

    context 'in the apm' do
      context 'when time is before the half hour' do
        parsed_time = DateTime.parse('09 Feb 2018 22:29:00 +0800')

        let(:delivery_order) { create(:delivery_order, serving_datetime: parsed_time) }

        it 'should return the correct format' do
          expect(delivery_order.delivery_time).to eq('22:00-22:30PM')
        end
      end

      context 'when time is after the half hour' do
        parsed_time = DateTime.parse('09 Feb 2018 22:31:00 +0800')

        let(:delivery_order) { create(:delivery_order, serving_datetime: parsed_time) }

        it 'should return the correct format' do
          expect(delivery_order.delivery_time).to eq('22:30-23:00PM')
        end
      end
    end

  end

end
