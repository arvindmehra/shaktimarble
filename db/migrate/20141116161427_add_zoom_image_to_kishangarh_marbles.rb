class AddZoomImageToKishangarhMarbles < ActiveRecord::Migration
  def change
    add_column :kishangarh_marbles, :zoom_image, :string
  end
end
