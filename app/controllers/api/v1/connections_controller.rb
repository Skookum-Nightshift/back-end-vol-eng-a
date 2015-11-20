class Api::V1::ConnectionsController < API::V1::BaseController
  def create
    @connection = Connection.create(connection_params)
    ApplicationMailer.welcome_email(connection_params).deliver_now
    render json: @connection
  end

  private

  def connection_params
    params.require(:connection).permit(:firstname, :lastname, :email, :zipcode, :opportunity_id, :organization_id, :organization_name, :opportunity_name, :organization_email)
  end
end
