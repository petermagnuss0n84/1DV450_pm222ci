class Licence < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :resources

  attr_accessible :licence_typ
end
