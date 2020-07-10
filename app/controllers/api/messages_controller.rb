class Api::MessagesController < ApplicationController

  def create
    @message = Message.new(
      user_id: params[:user_id],
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
    render 'show.json.jb'
  end
end
