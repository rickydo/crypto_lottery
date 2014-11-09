class Ticket < ActiveRecord::Base
	validates :email, format: { with: /\S{3,}@\S{2,}/  }
end
