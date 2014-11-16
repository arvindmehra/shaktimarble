class AddZoomImageToMakranaMarbles < ActiveRecord::Migration
  def change
    add_column :makrana_marbles, :zoom_image, :string
  end
end
