class User < ApplicationRecord
  has_many :rounds

  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence: true

  def password
    @password ||= BCrypt::Password.new(encrypted_password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.encrypted_password = @password
  end

  def authenticate(password)
    self.password == password
  end
end
