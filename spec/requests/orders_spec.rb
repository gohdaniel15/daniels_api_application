require 'rails_helper'

RSpec.describe 'Orders API', type: :request do

  let(:meal) { create(:meal) }
  let(:delivery_order) { create(:delivery_order) }
  let!(:order_item) { create(:order_item, delivery_order: delivery_order, meal: meal) }

  describe 'GET /orders' do

    before { get '/orders', xhr: true }

    it 'returns orders' do
      expect(json).to_not be_empty
      expect(json.size).to eq(1)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end

  end

end