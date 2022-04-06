# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Home', type: :request do
  describe 'GET /index' do
    it 'redirect to login' do
      get home_index_path
      expect(response).to redirect_to(new_user_session_path)
    end
  end
end
