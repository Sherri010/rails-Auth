class User < ApplicationRecord
   # attr_reader :password
   validates :password_digest,:email, presence: true
   # validates :password, confirmation: true

   has_secure_password

 def self.confirm(email, password)
     user = User.find_by(email: email)
     user.authenticate(password)
 end
#  def password=(password)
#   @password = password
#   self.password_digest = BCrypt::Password.create(password)
# end

# def authenticate(password)
#    BCrypt::Password.new(self.password_digest) == password ? self:false
# end

end
