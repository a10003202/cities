class Terminal < ApplicationRecord
  validates :name, :code, :city, presence: true
  validates :code, uniqueness: true
  validates :latitude, :longitude, numericality: true, allow_blank: true
  validates :code, format: {  with: /\w{1,}__\w{1,}/  }
  belongs_to :city

  delegate :name, to: :city, prefix: true # Add city_name attribute
end
