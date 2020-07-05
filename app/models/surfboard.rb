class Surfboard < ApplicationRecord
  belongs_to :user
  has_many :bookings

  # Validations
  validates :brand, presence: true
  validates :price, presence: true, numericality: true
  validates :name, presence: true
  validates :description, presence: true
  validates :deposit, presence: true, numericality: true

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
