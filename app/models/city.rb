class City < ApplicationRecord
    validates :name, :code, presence: true
    validates :code, uniqueness: true
    has_many :terminals
end
