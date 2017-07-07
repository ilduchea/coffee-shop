class Product < ApplicationRecord
  has_many :reviews

  validates :name, :cost, :origin, presence: true

end
