class AddCagtegoryAndImageToKishangarhMarble < ActiveRecord::Migration
  def change
    add_column :kishangarh_marbles, :kishangarh_marble_pics, :string
    add_column :kishangarh_marbles, :category, :string
  end
end
