class CreateShoes < ActiveRecord::Migration[5.1]
  def change
    create_table :shoes do |t|
      t.string :name
      t.float :price
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
