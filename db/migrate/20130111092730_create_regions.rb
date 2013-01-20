class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.integer :region_id
      t.string :country
      t.string :province
      t.string :town
      t.string :area

      t.timestamps
    end
  end
end
