# encoding: utf-8
class Resource < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :resource_type
  belongs_to :user
  belongs_to :licence
  has_and_belongs_to_many :tags
  

  #attr_accessible :namn
  #attr_accessible :url
  #attr_accessible :description
  #attr_accessible :user_id
  #attr_accessible :resource_type_id
  #attr_accessible :licence_id
  #attr_accessible :resource_tag_id

  validates :namn,
            :presence => {:message => "måste anges"}

  validates :url,
            :presence => {:message => "måste anges"}
  
  validates :description,
            :presence => {:message => "måste anges"}
          
end
