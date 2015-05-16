class Product < ActiveRecord::Base
	has_many :comments
	has_many :photos
	belongs_to :user
end
