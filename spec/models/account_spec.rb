require 'rails_helper'

describe Account do
  describe 'validations' do
    it { should_validate_presence_of :subdomain }
    it { should_validate_uniqueness_of :subdomain }

    it { should_allow_value('Artem').for(:subdomain) }
    it { should_allow_value('test').for(:subdomain) }

    it { should_not_allow_value('www').for(:subdomain) }
    it { should_allow_value('WWW').for(:subdomain) }
    it { should_allow_value('.test').for(:subdomain) }
    it { should_allow_value('test/').for(:subdomain) }

    it 'should validate case insensitive uniqueness' do
      create(:account, subdomain: 'Test')
      expect(build(:account, subdomain: 'test')).to_not be_valid
    end
  end

  describe 'associations' do
    it 'should have owner'
  end
end
