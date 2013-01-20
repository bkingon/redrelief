class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.integer :donation_id
      t.integer :project_id
      t.string :user_id
      t.string :procurement
      t.string :description
      t.integer :quantity

      t.timestamps
    end
  end
end
