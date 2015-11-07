class Api::V1::OpportunitySerializer < ActiveModel::Serializer

  attributes :opportunity_id, :name, :address, :description, :organization

  def opportunity_id
    object.id
  end

  def organization
    if object.organization
		Api::V1::OrganizationSerializer.new(object.organization).attributes
	else
		{}
	end
  end

end
