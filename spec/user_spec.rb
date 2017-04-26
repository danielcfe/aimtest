require 'rails_helper'
describe User do
  let!(:user) { build(:user) }

  it 'is valid with all fields' do
    expect(user).to be_valid
  end

end
