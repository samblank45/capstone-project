class Api::UsersController < ApplicationController

  before_action :authenticate_user, except: [:create]

  def index
    @users = User.all
    @image = Image.first
    render 'index.json.jb'
  end

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "user created successfully"}, status: :created
    else 
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    @images = Image.all.where(user_id: @user.id)
    render 'show.json.jb'
  end

  def update
    @user = User.find_by(id: params[:id])
    if @user.id == current_user.id
      @user.first_name = params[:first_name] || @user.first_name
      @user.last_name = params[:last_name] || @user.last_name
      @user.biography = params[:biography] || @user.biography
      @user.hobbies = params[:hobbies] || @user.hobbies
      @user.email = params[:email] || @user.email
      @user.aliyah_date = params[:aliyah_date] || @user.aliyah_date
      @user.country_origin = params[:country_origin] || @user.country_origin
      @user.current_location = params[:current_location] || @user.current_location
      if @user.save
        render 'show.json.jb'
      else
        render json: {error: @user.errors.full_messages}, status: 422
      end
    else
      render json: {error: @user.errors.full_messages}, status: :forbidden
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    if @user.id == current_user.id
      @user.destroy
      render json: {message: "user successfuly destroyed"}
    else
      render json: {}, status: :forbidden
    end
  end

end
