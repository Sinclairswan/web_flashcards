class User < ApplicationRecord
  has_many :rounds
  has_many :decks, through: :round

  validates :name, :email, :password, presence: true
  validates :email, uniqueness: true

   def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(entered_password)
    @password = BCrypt::Password.create(entered_password)
    self.password_hash = @password
  end

  def authenticate(plain_text_password)
    self.password == plain_text_password
  end

end
