class Api::V1::UserSerializer < ActiveModel::Serializer

  attributes :user_id, :full_name, :first_name, :last_name, :email

  def user_id
    object.id
  end

  def full_name
    "#{object.first_name} #{object.last_name}".strip
  end

end
