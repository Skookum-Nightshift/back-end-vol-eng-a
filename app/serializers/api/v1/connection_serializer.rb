class Api::V1::ConnectionSerializer < ActiveModel::Serializer
  attributes :firstname, :lastname, :email, :zipcode, :opportunity_id, :organization_id, :opportunity_name, :organization_name

  def connection_id
    object.id
  end

end
