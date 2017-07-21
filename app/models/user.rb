class User < ApplicationRecord
  has_many :rounds
  validates :first_name, :email, :password, presence: true

 include BCrypt

 def full_name
   "#{self.first_name} #{self.last_name}"
 end

 def password
   @password ||= Password.new(password_hash)
 end

 def password=(new_password)
   @password = Password.create(new_password)
   self.password_hash = @password
 end

 # Authenticate method included in model object for easier authentication
 def authenticate(email, password)
   if self.email == email && self.password == password
     true
   else
     puts 'wrong password'
   end

end
