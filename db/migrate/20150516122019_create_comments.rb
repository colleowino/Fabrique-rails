class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      t.string :author_name
      t.string :product_id

      t.timestamps null: false
    end
  end
end
