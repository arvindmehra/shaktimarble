class AddZoomImageToGranites < ActiveRecord::Migration
  def change
    add_column :granites, :zoom_image, :string
  end
end
