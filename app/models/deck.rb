class Deck < ApplicationRecord
  has_many :cards
  has_many :rounds
  validates name: true
end
