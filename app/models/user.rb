class User < ActiveRecord::Base
	has_secure_password
	validates :email, presence: :true 
	validates :email, uniqueness: :true
	validates :email, format { with: /\S{3,}@\S{2,}/ }
end
