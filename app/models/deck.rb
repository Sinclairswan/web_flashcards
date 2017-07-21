class Deck < ApplicationRecord
  has_many :cards
  has_many :guesses
  # Remember to create a migration!
end
