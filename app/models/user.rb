class User < ApplicationRecord
  has_many :rounds
  # Remember to create a migration!
end
