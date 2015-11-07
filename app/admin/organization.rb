ActiveAdmin.register Organization do

permit_params :name, :address, :city, :city, :state, :zip, :email, :web, :volunteer_url, :facebook, :twitter, :youtube, :description, categories_attributes: [:name, :id, :_destroy]

form do |f|
  f.semantic_errors *f.object.errors.keys
  f.inputs 'Details' do
    f.input :name
    f.input :address
    f.input :city
    f.input :state
    f.input :zip
    f.input :email
    f.input :web
    f.input :volunteer_url
    f.input :facebook
    f.input :twitter
    f.input :youtube
    f.input :description
    f.has_many :categories, allow_destroy: true, new_record: "category " do |a|
      a.input :name
    end
  end
  f.actions
end

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
