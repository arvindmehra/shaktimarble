class CreateGranites < ActiveRecord::Migration
  def change
    create_table :granites do |t|
      t.string :name
      t.string :price
      t.string :granite_pics

      t.timestamps
    end
  end
end
