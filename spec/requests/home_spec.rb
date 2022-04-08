# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Home', type: :request do
  login_user
  describe 'GET /index' do
    it 'success' do
      get home_index_path, params: {}
      expect(response).to have_http_status(:ok)
    end
  end
end
