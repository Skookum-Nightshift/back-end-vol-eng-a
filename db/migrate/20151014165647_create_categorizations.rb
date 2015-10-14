class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.belongs_to :organization
      t.belongs_to :category

      t.timestamps null: false
    end
  end
end
