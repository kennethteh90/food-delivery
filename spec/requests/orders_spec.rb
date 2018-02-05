require 'rails_helper'

RSpec.describe 'Orders API', type: :request do
  let!(:orders) { create_list(:delivery_order, 9) }
  let(:order_id) { orders.first.order_id }

  describe 'GET /orders' do
    before { get '/orders' }

    it 'returns orders' do
      expect(JSON.parse(response.body)['orders']).not_to be_empty
      expect(JSON.parse(response.body)['orders'].size).to eq(9)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /orders/:order_id' do
    before { get "/orders/#{order_id}" }

    context 'when the record exists' do
      it 'returns the order' do
        expect(JSON.parse(response.body)).not_to be_empty
        expect(JSON.parse(response.body)['order']['order_id']).to eq(order_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:order_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end
    end
  end
end
