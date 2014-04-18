class AddIndexesXYToMaps < ActiveRecord::Migration
  def change
    add_index :maps, [:x, :y], unique: true
  end
end
