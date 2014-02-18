class User < ActiveRecord::Base
  # attr_accessible :title, :body

  has_secure_password

  has_many :resources

  attr_accessible :firstname
  attr_accessible :surname
  attr_accessible :email
  attr_accessible :password
  attr_accessible :password_confirmation
  attr_accessible :password_digest

  # validates :email,
  # 			:presence => {:message => "Du måste ange en e-post"},
  # 			uniqueness: true

  # validates_format_of :email, :with	=> /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
  # 					  :presence => {:message => "Du måste ange en korrekt epost"}			
end
