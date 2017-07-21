class Round < ApplicationRecord
  belongs_to  :user
  belongs_to  :deck
  has_many :cards, through: :deck
  # Remember to create a migration!
end
