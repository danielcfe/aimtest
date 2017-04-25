require 'rails_helper'

RSpec.describe Rest::BiometricsController, type: :controller do

  describe 'GET index as admin' do
    let(:ok_params) { {email: ENV['OK_EMAIL'], image: 'test'} }
    it 'has a 200 status code' do
      get :verify_user, params: ok_params
      expect(response.status).to eq(200)
    end
  end

  describe 'GET index as boss' do
    let(:not_fount_params) { {email: 'danielcfe@gmail.com', image: 'test'} }
    it 'has a 401 status code' do
      get :verify_user, params: not_fount_params
      expect(response.status).to eq(404)
    end
  end

end
