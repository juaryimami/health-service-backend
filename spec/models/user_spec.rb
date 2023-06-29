require 'rails_helper'
RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:reservations).dependent(:destroy) }
    it { should have_many(:services).through(:reservations) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
  end

  describe '#admin?' do
    context 'when user has admin role' do
      let(:user) { User.new(role: 'admin') }

      it 'returns true' do
        expect(user.admin?).to be true
      end
    end

    context 'when user does not have admin role' do
      let(:user) { User.new(role: 'user') }

      it 'returns false' do
        expect(user.admin?).to be false
      end
    end
  end
end
