class Api::V1::ConnectionsController < API::V1::BaseController
  def create
    @connection = Connection.create(connection_params)
    render json: @connection
  end

  private

  def connection_params
    params.require(:connection).permit(:firstname, :lastname, :email, :zipcode, :opportunity_id, :organization_id)
  end
end
