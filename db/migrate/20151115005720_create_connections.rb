class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :zipcode
      t.string :organization_name
      t.string :opportunity_name
      t.integer :opportunity_id
      t.integer :organization_id

      t.timestamps null: false
    end
  end
end
