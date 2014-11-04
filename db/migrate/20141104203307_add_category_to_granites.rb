class AddCategoryToGranites < ActiveRecord::Migration
  def change
    add_column :granites, :category, :string
  end
end
