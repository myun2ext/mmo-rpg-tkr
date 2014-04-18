class CreateMapChips < ActiveRecord::Migration
  def change
    create_table :map_chips do |t|
      t.string :name

      t.timestamps
    end
  end
end
