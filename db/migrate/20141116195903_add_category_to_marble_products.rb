class AddCategoryToMarbleProducts < ActiveRecord::Migration
  def change
    add_column :marble_products, :category, :string
  end
end
