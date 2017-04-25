require 'rails_helper'

RSpec.describe Rest::AuthsController, type: :controller do

  describe 'GET login ok' do
    let(:ok_params) { {email: 'carlos@aimmanager.com', image: 'test'} }
    before do
      stub_request(:post, /verify_user/).to_return(:status => 200)
    end
    it 'has a 200 status code' do
      get :login, params: ok_params
      expect(response.status).to eq(200)
    end
  end

  describe 'GET login fail' do
    let(:not_fount_params) { {email: 'danielcfe@gmail.com', image: 'test'} }
    before do
      stub_request(:post, /verify_user/).to_return(:status => 404)
    end
    it 'has a 404 status code' do
      get :login, params: not_fount_params
      expect(response.status).to eq(404)
    end
  end

end
