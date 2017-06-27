require 'rails_helper'

describe User do
  describe 'email' do
    it { is_expected.to validate_presence_of(:email) }
  end
end
