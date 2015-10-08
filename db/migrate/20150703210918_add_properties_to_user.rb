class AddPropertiesToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :active, :boolean, default: true, null: false

    # add_column :users, :profile_image, :string
    # add_column :users, :stripe_id, :string
  end
end
