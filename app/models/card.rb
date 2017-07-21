class Card < ApplicationRecord
  belongs_to :deck
  # Remember to create a migration!
end
