class Api::UserEventsController < ApplicationController

  before_action :authenticate_user  


  def create
    @user_event = UserEvent.new(
      event_id: params[:event_id],
      user_id: current_user.id
    )
    if @user_event.save
      render 'show.json.jb'
    else
      render json: { errors: @user_event.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @user_event = UserEvent.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def destroy
    @user_event = UserEvent.find_by(event_id: params[:event_id], user_id: current_user.id)
    if @user_event.user_id == current_user.id
      @user_event.destroy
      render json: {message: "user successfully removed from event"}
    else
      render json: {message: "Not allowed"}, status: :forbidden
    end
  end
end
