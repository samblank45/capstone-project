class Api::UserEventsController < ApplicationController

  def create
    @user_event = UserEvent.new(
      event_id: params[:event_id],
      user_id: params[:user_id]
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
    @user_event = UserEvent.find_by(id:params[:id])
    @user_event.destroy
    render json: {message: "user successfully removed from event"}
  end
end
