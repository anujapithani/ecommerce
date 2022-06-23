class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :image
      t.integer :quantity
      t.integer :category_id
      t.integer :store_id

      t.timestamps
    end
  end
end
