require 'rails_helper'

RSpec.describe User, type: :model do

  context 'Can be created' do
    it 'from a dummy Oauth provider' do
      user = User.create(email: 'ajiellodev@gmail.com', uid: 123, provider: 'github')
      expect(user.valid?).to eq true
    end

    it 'from a legitimate Omniauth provider' do
      # add test for this
      expect(false).to eq true
    end
  end

end
