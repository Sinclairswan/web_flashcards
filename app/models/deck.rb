class Deck < ApplicationRecord
  has_many :cards
  # Remember to create a migration!
end
