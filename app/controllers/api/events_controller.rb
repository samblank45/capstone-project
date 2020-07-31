class Api::EventsController < ApplicationController

  before_action :authenticate_user 

  def index
    @events = Event.all
    render 'index.json.jb'
  end

  def create
    @event = Event.new(
      title: params[:title],
      description: params[:description],
      location: params[:location],
      user_id: current_user.id,
      date_time: params[:date_time],
      image_url: params[:image_url],
      address: params[:address]
    )
    if @event.save
      render 'show.json.jb'
    else
      render json: {error: @event.errors.full_messages}, status: 422
    end
  end

  def show
    @event = Event.find_by(id: params[:id])
    @user_event = UserEvent.find_by(id: @event.user_id)
    # @user = User.find_by(id: @user_event.user_id)
    # @user_events = UserEvent.all.where(event_id: @event.id)
    render 'show.json.jb'
  end

  def update
    @event = Event.find_by(id: params[:id])
    @user_events = UserEvent.all.where(event_id: @event.id)
    if @event.user_id == current_user.id
      @event.title = params[:title] || @event.title
      @event.description = params[:description] || @event.description
      @event.location = params[:location] || @event.location
      @event.date_time = params[:date_time] || @event.date_time
      @event.image_url = params[:image_url] || @event.image_url
      @event.address = params[:address] || @event.address
      if @event.save
        render 'show.json.jb'
      else
        render json: {error: @event.errors.full_messages}, status: 422
      end
    else
      render json: {error: @event.errors.full_messages}, status: :forbidden
    end
  end

  def destroy
    @event = Event.find_by(id: params[:id])
    if @event.user_id == current_user.id
      @event.destroy
      render json: {message: "event successfully destroyed"}
    else
      render json: {}, status: :forbidden
    end
  end
end
