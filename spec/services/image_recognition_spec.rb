require 'rails_helper'

RSpec.describe ImageRecognition, type: :model do

  describe 'match_user_image' do
    let!(:user) { create(:user, email: 'danielcfe@gmail.com', image: 'test') }
    let(:ok_params) { {email: user.email, image: user.image} }
    it 'equal' do
      expect(ImageRecognition.new.match_user_image(user.email, user.image)).to eq(true)
    end
  end

end
