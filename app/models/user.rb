class User < ApplicationRecord
  has_many :rounds
  has_many :decks, through: :round

  validates :name, :email, :password, presence: true
  validates :email, uniqueness: true
end
