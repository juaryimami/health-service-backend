require 'rails_helper'

RSpec.describe Reservation, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:service_id) }
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:reservation_date) }
  end

  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:service) }
  end
end
