class AddColumnMapItemToMaps < ActiveRecord::Migration
  def change
    add_reference :maps, :map_item
  end
end
