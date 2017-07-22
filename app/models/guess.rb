class Guess < ApplicationRecord
  belongs_to :round
  has_many :users, through: :round
  # Remember to create a migration!
end
