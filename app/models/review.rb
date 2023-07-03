class Review < ApplicationRecord
  # Asociaciones
  belongs_to :restaurant
  belongs_to :user

  # Validaciones
  validates :comment, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
end
