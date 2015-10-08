class Api::V1::RegistrationsController < API::V1::BaseController
  require 'uri'

  def create
    random_password = Devise.friendly_token.first(8)
    mapped_params = user_params
    mapped_params[:password] = random_password
    mapped_params[:password_confirmation] = random_password

    @user = User.new(mapped_params)
    if @user.save
      RegistrationMailer.welcome(@user, random_password).deliver_now
      render json: @user, serializer: Api::V1::SessionSerializer, root: nil
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email)
    end
end
