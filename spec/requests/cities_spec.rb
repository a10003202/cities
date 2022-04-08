# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Cities', type: :request do
  let(:invalid_attributes) { { amount: 20 } }
  let(:valid_attributes) { { name: 'City', code: 'COD__1' } }
  let(:invalid_attributes) { { code: 'COD' } }
  let(:valid_session) { {} }
  subject(:city) { City.create!(valid_attributes) }
  login_user
  describe 'GET /index' do
    it 'renders a successful response' do
      get cities_path, params: {}
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      get city_path(subject), params: {}
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_city_path, params: {}
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      get edit_city_path(subject), params: {}
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'POST /create' do
    context 'with valid params' do
      it 'create new record' do
        expect {
          post cities_path, params: { city: valid_attributes }
        }.to change(City, :count).by(1)
      end
      it 'redirects to the created record' do
        post cities_path, params: { city: valid_attributes }
        expect(response).to redirect_to(city_path(City.last))
      end
    end
    context 'with invalid params' do
      it "returns a success response (i.e. to display the 'new' template)" do
        post cities_path, params: { city: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'PUT /update' do
    context 'with valid params' do
      let(:new_attributes) { { name: 'City updated', code: 'COD__1' } }

      it 'updates the requested record' do
        put city_path(subject), params: { city: new_attributes }
        subject.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the updated record' do
        put city_path(subject), params: { city: new_attributes }
        expect(response).to redirect_to(subject)
      end
    end

    context 'with invalid params' do
      it "returns a success response (i.e. to display the 'edit' template)" do
        put city_path(subject), params: { city: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested record' do
      city = subject
      expect {
        delete city_path(city), params: {}
      }.to change(City, :count).by(-1)
    end

    it 'redirects to the cities list' do
      delete city_path(subject), params: {}
      expect(response).to redirect_to(cities_url)
    end
  end
end
