class Post < ActiveRecord::Base
  has_many :pictures, as: :pictured
  accepts_nested_attributes_for :pictures
  attr_accessible :author, :body, :subject, :pictures_attributes
  
end
