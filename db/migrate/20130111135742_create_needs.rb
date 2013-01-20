class CreateNeeds < ActiveRecord::Migration
  def change
    create_table :needs do |t|
      t.string :name
      t.string :description
      t.integer :quantity
      t.integer :project_id
      t.integer :donation_id

      t.timestamps
    end
  end
end
