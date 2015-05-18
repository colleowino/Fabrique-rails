class Product < ActiveRecord::Base

	searchkick
	has_many :comments
	has_many :photos
	has_attached_file :image
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
	belongs_to :user
end
