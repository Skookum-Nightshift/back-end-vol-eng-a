class Api::V1::ConnectionSerializer < ActiveModel::Serializer
  attributes :firstname, :lastname, :email, :zipcode, :opportunity_id, :organization_id

  def connection_id
    object.id
  end

end
