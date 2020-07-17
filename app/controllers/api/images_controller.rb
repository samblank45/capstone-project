class Api::ImagesController < ApplicationController

  before_action :authenticate_user

  def create
    @image = Image.new(
      url: params[:url],
      user_id: current_user.id
    )
    if @image.save
      render 'show.json.jb'
    else
      render json: {error: @image.errors.full_messages}, status: 422
    end
  end

  def show
    @image = Image.find_by(id:params[:id])
    render 'show.json.jb'
  end

  def destroy
    @image = Image.find_by(id:params[:id])
    if @image.user_id == current_user.id
      @image.destroy
      render json: {message: "image successfully destroyed"}
    else
      render json: {}, status: :forbidden
    end
  end
end
