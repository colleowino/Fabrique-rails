class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.integer :price
      t.string :description
      t.string :category
      t.string :status
      t.string :drop_off_point

      t.timestamps null: false
    end
  end
end
