class MakranaMarble < ActiveRecord::Migration
  def change
    create_table :makrana_marbles do |t|
      t.string :name
      t.string :price
      t.string :makrana_marble_pics
      t.string :category

      t.timestamps
    end
  end
end
