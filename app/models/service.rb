class Service < ApplicationRecord
  has_one_attached :image

  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations

  validates :service_name, :description, :price, :service_date, :doctor_name, presence: true
end
