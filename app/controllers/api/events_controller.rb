class Api::EventsController < ApplicationController


  def index
    @events = Event.all
    render 'index.json.jb'
  end

  def create
    @event = Event.new(
      title: params[:title],
      description: params[:description],
      location: params[:location],
      user_id: params[:user_id],
      date_time: params[:date_time]
    )
    if @event.save
      render 'show.json.jb'
    else
      render json: {error: @event.errors.full_messages}, status: 422
    end
  end

  def show
    @event = Event.find_by(id: params[:id])
    @user_events = UserEvent.all.where(event_id: @event.id)
    render 'show.json.jb'
  end

  def update
    @event = Event.find_by(id: params[:id])
    @user_events = UserEvent.all.where(event_id: @event.id)
    @event.title = params[:title] || @event.title
    @event.description = params[:description] || @event.description
    @event.location = params[:location] || @event.location
    @event.user_id = params[:user_id] || @event.user_id
    @event.date_time = params[:date_time] || @event.date_time
    if @event.save
      render 'show.json.jb'
    else
      render json: {error: @event.errors.full_messages}, status: 422
    end
  end

  def destroy
    @event = Event.find_by(id: params[:id])
    @event.destroy
    render json: {message: "event successfully destroyed"}
  end
end
