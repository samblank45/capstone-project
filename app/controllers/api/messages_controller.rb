class Api::MessagesController < ApplicationController

  before_action :authenticate_user

  def create
    @message = Message.new(
      user_id: current_user.id,
      text: params[:text],
      conversation_id: params[:conversation_id]
    )
    if @message.save
      render 'show.json.jb'
    else
      render json: {error: @message.errors.full_messages}, status: 422
    end
  end

  def show
    @message = Message.find_by(id: params[:id])
    if @message.user_id == current_user.id
      render 'show.json.jb'
    else
      render json: {}, status: :forbidden
    end
  end
end
