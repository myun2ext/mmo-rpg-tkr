class CreateMapItems < ActiveRecord::Migration
  def change
    create_table :map_items do |t|
      t.references :map_chip, index: true

      t.timestamps
    end
  end
end
