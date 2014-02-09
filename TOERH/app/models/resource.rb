class Resource < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :resource_type
  belongs_to :user
  has_and_belongs_to_many :tags
end
