class Photo < ActiveRecord::Base
  belongs_to :product
  has_attached_file :url 
  validates_attachment_content_type :url, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
