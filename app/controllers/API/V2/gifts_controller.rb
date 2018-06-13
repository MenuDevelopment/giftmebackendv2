class Api::V2::GiftsController < ApplicationController

  def index
    render json: Gift.all
  end
end
