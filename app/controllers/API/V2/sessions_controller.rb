class Api::V2::SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user.authenticate(params[:password])
      render json: token_json(user)
    else
      render json: {error: "improper login"}
    end
  end
end
