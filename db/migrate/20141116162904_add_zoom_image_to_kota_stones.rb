class AddZoomImageToKotaStones < ActiveRecord::Migration
  def change
    add_column :kota_stones, :zoom_image, :string
  end
end
