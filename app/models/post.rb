class Post < ActiveRecord::Base
  has_many :pictures, as: :pictured

  attr_accessible :author, :body, :subject, :picture, :image, :description
  
end
