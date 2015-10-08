class Api::V1::UsersController < API::V1::BaseController

  before_action only: [ :update, :update_password ] do
    require_proof authenticatable: :User
  end


  def update
    @user = User.find(current_user.id)
    if @user.update(user_params)
      NotificationMailer.account_change(@user).deliver_now
      render json: @user, serializer: Api::V1::SessionSerializer, root: nil
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def update_password
    @user = User.find(current_user.id)
    if @user.update_with_password(password_params)
      NotificationMailer.account_change(@user).deliver_now
      render json: @user, serializer: Api::V1::SessionSerializer, root: nil
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email)
    end

    def password_params
      params.require(:user).permit(:current_password, :password, :password_confirmation)
    end
end
