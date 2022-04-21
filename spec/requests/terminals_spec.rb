# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Terminals', type: :request do
  let(:invalid_attributes) { { amount: 20 } }
  let(:valid_attributes) { { name: 'City', code: 'COD__1', city: city } }
  let(:invalid_attributes) { { code: 'COD' } }
  let(:city) { City.create({ name: 'City', code: 'COD__1' }) }
  let(:valid_session) { {} }
  subject(:terminal) { Terminal.create!(valid_attributes) }
  login_user
  describe 'GET /index' do
    it 'redirect to login' do
      get terminals_path
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      get terminal_path(subject), params: {}
      expect(response).to have_http_status(:ok)
    end
  end
end
