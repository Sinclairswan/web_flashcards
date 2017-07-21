class Deck < ApplicationRecord

  has_many :cards
  has_many :rounds
  has_many :users, through: :rounds

   # validates :cards, :rounds, presence: true

end
