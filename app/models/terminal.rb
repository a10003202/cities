class Terminal < ApplicationRecord
  validates :name, :code, :city, presence: true
  validates :code, uniqueness: true
  validates :latitude, :longitude, numericality: true, allow_nil: true
  belongs_to :city
end
