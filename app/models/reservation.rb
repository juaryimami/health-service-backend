class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :service

  validates :service_id, :user_id, :reservation_date, presence: true
end
