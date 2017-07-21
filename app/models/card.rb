class Card < ApplicationRecord
  belongs_to :deck

  validates :question, :answers, presence: true
end
