class Post < ActiveRecord::Base
  has_many :pictures, as: :pictured
  accepts_nested_attributes_for :pictures
  attr_accessible :author, :body, :subject, :picture, :image, :description, :pictures_attributes
  
end
