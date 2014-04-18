class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.integer :x
      t.integer :y

      t.timestamps
    end
  end
end
