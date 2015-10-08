ActiveAdmin.register User do
  scope :active, default: true
  scope :all

  permit_params :id, :email, :first_name, :last_name, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :active
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :name
  filter :active
  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "User Details" do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
