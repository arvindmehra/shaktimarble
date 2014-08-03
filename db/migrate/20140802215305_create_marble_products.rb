class CreateMarbleProducts < ActiveRecord::Migration
  def change
    create_table :marble_products do |t|
      t.string :name
      t.string :price
      t.string :product_pics
      t.timestamps
    end
  end
end
