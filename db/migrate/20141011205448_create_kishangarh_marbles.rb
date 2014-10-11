class CreateKishangarhMarbles < ActiveRecord::Migration
  def change
    create_table :kishangarh_marbles do |t|
      t.string :name
      t.string :price

      t.timestamps
    end
  end
end
