require 'rails_helper'

describe Blog do
  describe 'Title' do
    it { should validate_presence_of(:title) }
  end

  describe 'Description' do
    it { should validate_length_of(:description).is_at_least(50) }
  end
end