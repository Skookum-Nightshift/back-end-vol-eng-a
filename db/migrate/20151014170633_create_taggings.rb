class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.belongs_to :opportunity
      t.belongs_to :tag

      t.timestamps null: false
    end
  end
end
