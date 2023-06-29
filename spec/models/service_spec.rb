require 'rails_helper'

RSpec.describe Service, type: :model do
  describe 'associations' do
    it { should have_one_attached(:image) }
    it { should have_many(:reservations).dependent(:destroy) }
    it { should have_many(:users).through(:reservations) }
  end

  describe 'validations' do
    it { should validate_presence_of(:service_name) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:service_date) }
    it { should validate_presence_of(:doctor_name) }
  end
end

