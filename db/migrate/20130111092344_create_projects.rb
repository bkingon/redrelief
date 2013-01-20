class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :need_level
      t.integer :manager_id
      t.integer :region_id
      t.string :description
      t.integer :need_list

      t.timestamps
    end
  end
end
