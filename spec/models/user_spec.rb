require 'rails_helper'

describe User do
  it 'rejects user@mycom' do
    user = FactoryGirl.build(:user, email: 'user@mycom')
    expect(user).to_not be_valid
  end
end
