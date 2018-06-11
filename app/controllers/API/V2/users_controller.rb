class Api::V2::UsersController < ApplicationController


  def create
    byebug
    user = User.create(user_params)

    if (user.save)
      render json: token_json(user)
    else
      render json: {
        errors:@user.errors.full_messages
      }, status: :unprocesseable_entity
    end
  end


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :payment_info, :password)
  end
end
