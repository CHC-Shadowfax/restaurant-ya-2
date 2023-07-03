class Menu < ApplicationRecord
  # Asociaciones
  belongs_to :restaurant

# Validaciones
  validates :name, :price, :percent_discount, :available, presence: true
end
