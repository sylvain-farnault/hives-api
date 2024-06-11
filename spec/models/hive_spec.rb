require 'rails_helper'

RSpec.describe Hive, type: :model do
  describe 'validations' do
    it 'validates presence of name' do
      hive = Hive.new(name: nil)
      expect(hive).not_to be_valid
      expect(hive.errors[:name]).to include("can't be blank")
    end

    it 'hive with name length under 6 characters is invalid' do
      hive = Hive.new(name: 'short')
      expect(hive).not_to be_valid
      expect(hive.errors[:name]).to include("is too short (minimum is 6 characters)")
    end

    it 'hive with name length 6 characters is valid' do
      hive = Hive.new(name: 'longer')
      expect(hive).to be_valid
    end
  end
end
