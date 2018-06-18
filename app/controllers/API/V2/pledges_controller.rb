class Api::V2::PledgesController < ApplicationController
  def create
    @pledge = Pledge.new(pledge_params)
    if @pledge.save
      render json: @pledge
    else
      render json: {error: "Something went wrong with pledge creation"}
    end
  end

  def update
    @pledge = Pledge.find(params[:id])
    @pledge.update(pledge_params)
    if @pledge.save
      render json: @pledge
    else
      render json: {error: "Something went wrong with update"}
    end
  end

  private

  def pledge_params
    params.require(:pledge).permit(:amount, :message, :user_id, :gift_id)
  end
end
