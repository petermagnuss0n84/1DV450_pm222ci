class User < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :resources

  attr_accessible :firstname
  attr_accessible :surname
  attr_accessible :email
end
