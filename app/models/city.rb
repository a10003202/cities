class City < ApplicationRecord
    validates :name, :code, presence: true
    validates :code, uniqueness: true
    validates :code, format: {  with: /\w{1,}__\w{1,}/  }
    has_many :terminals
end
