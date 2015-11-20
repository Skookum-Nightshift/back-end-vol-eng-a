class Api::V1::OrganizationSerializer < ActiveModel::Serializer

  attributes :organization_id, :name, :address, :state, :city, :zip, :description, :web, :volunteer_url, :facebook, :twitter, :youtube, :categories, :opportunities, :logo, :email

  def organization_id
    object.id
  end

end
