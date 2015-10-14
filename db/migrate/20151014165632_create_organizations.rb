class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :web
      t.string :volunteer_url
      t.string :facebook
      t.string :twitter
      t.string :youtube
      t.text :description

      t.timestamps null: false
    end
  end
end
