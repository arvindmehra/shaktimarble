class CreateKotaStones < ActiveRecord::Migration
  def change
    create_table :kota_stones do |t|
      t.string :name
      t.string :price
      t.string :kota_stone_pics

      t.timestamps
    end
  end
end
