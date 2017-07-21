class RenameProductIdToShoeId < ActiveRecord::Migration[5.1]
  def change
    rename_column :images, :product_id, :shoe_id
  end
end
