class Guess < ApplicationRecord
  belongs_to :round
  belongs_to :card
  validates :card_id, :round_id, presence: true
  # Remember to create a migration!
end
