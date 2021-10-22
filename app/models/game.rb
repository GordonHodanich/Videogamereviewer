class Game < ApplicationRecord
  has_many :comments
  has_many :users, through: :comments
  validates :rank, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
end
