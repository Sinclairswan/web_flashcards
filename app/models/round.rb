class Round < ApplicationRecord
  belongs_to :deck
  belongs_to :user
  has_many :guesses
  # Remember to create a migration!

  def first_try_guesses
    guesses = 0
    self.guesses.each do |guess|
      if guess.count == 1
        guesses += 1
      end
    end
    guesses
  end

  def total_guesses
    guesses = 0
    self.guesses.each do |guess|
      guesses += guess.count
    end
    guesses
  end

end
