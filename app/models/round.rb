class Round < ApplicationRecord
  has_many :guesses
  belongs_to :deck
  belongs_to :user
  # Remember to create a migration!


# def counter
#   self.card.count
#   Guess.boject
# end


#on whatever current round I'm on, I want to track all of the user answers
#if the user answer is correct, I want to store a one that will eventually go into total first correct on guesses
#if the user answer is incorrect or nil, I want to store a one that will go into a total wrong (not anywhere)
#after round ends, use total wrong and total first correct to populate guesses table and go to stats page

def counter

end

def game_finished(card, deck)
  (card.id) == deck.count
end

end
