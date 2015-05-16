class AddMainPhotoUrlToProducts < ActiveRecord::Migration
  def change
    add_column :products, :main_photo_url, :string
  end
end
