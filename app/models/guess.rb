class Guess < ApplicationRecord
  belongs_to :round
  belongs_to :user, through: :round
  # Remember to create a migration!
end
