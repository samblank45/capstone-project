class Api::ImagesController < ApplicationController

  before_action :authenticate_user

  def create
    response = Cloudinary::Uploader.upload(params[:url])
    cloudinary_url = response["secure_url"]
    @image = Image.new(
      url: cloudinary_url,
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

  def update
    @image = Image.find_by(id:params[:id])
    if @image.user_id == current_user.id
      @image.main_image = params[:main_image] || @image.main_image
      if @image.save
        render 'show.json.jb'
      else
        render json: {error: @image.errors.full_messages}, status: :bad_request
      end
    end
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
