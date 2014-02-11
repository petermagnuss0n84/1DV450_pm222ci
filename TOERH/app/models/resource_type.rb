class ResourceType < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :resources

  attr_accessible :resource_type
end
