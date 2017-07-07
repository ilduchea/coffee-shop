class Review < ApplicationRecord
  belongs_to :product

  validates :author, :body, presence: true
end
