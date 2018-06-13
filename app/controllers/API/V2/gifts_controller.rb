class Api::V2::GiftsController < ApplicationController

  def create
    gift = Gift.new(gift_params)
    if (gift.save)
      render json: gift
    else
      render json: {error: "something went wrong creating gift"}
    end
  end

  def index
    render json: Gift.all
  end

  def show
    @gift = Gift.find(params[:id])
    render json: @gift
  end

  private

  def gift_params
    params.require(:gift).permit(:item_name, :item_link, :item_description, :item_price, :item_description, :user_id,  :end_date)
  end
end
