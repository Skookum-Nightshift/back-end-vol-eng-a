class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.string :name
      t.string :address
      t.text :description
      t.belongs_to :organization

      t.timestamps null: false
    end
  end
end
