class Api::V1::OrganizationSerializer < ActiveModel::Serializer

  attributes :organization_id, :name, :address, :description, :web, :volunteer_url, :facebook, :twitter, :youtube

  def organization_id
    object.id
  end

end
