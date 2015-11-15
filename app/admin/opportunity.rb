ActiveAdmin.register Opportunity do


form do |f|
  f.semantic_errors *f.object.errors.keys
  f.inputs 'Details' do
    f.input :organization
    f.input :name
    f.input :address
    f.input :description
    panel "" do
      "Hold command and click each tag for multiple tags"
    end
    f.input :tag_list, :as => :select,
                             :multiple => :true,
                             :collection => ActsAsTaggableOn::Tag.all
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
