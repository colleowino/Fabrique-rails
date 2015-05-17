class RemoveFieldNameFromTableName < ActiveRecord::Migration
  def change
    remove_column :photos, :product_id, :datatype
  end
end
