class Api::V2::GiftsController < ApplicationController

  def index
    render json: Gift.all
  end

  def show
    @gift = Gift.find(params[:id])
    render json: @gift
  end
end
