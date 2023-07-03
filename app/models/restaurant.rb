class Restaurant < ApplicationRecord
  # Asociaciones
  belongs_to :user
  has_many :menus
  has_many :reviews

  # Validaciones
  validates :name, :address, presence: true
end
