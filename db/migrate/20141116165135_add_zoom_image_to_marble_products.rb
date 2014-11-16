class AddZoomImageToMarbleProducts < ActiveRecord::Migration
  def change
    add_column :marble_products, :zoom_image, :string
  end
end
