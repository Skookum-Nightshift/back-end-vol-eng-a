class Api::V1::SessionsController < API::V1::BaseController

  proof_actions authenticatable: :User, authenticate: :valid_password? do |user, token|
    Api::V1::SessionSerializer.new(user).attributes
  end

end
