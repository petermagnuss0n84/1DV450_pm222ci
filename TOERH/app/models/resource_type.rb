class ResourceType < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :resources
end
