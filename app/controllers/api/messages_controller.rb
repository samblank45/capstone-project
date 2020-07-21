class Api::MessagesController < ApplicationController

  before_action :authenticate_user

  def create
    @message = Message.new(
      user_id: current_user.id,
      text: params[:text],
      conversation_id: params[:conversation_id]
    )
    @conversation = Conversation.find_by(id: @message.conversation_id)
    if @conversation.sender_id == current_user.id || @conversation.recipient_id == current_user.id
      if @message.save
        render 'show.json.jb'
      else
        render json: {error: @message.errors.full_messages}, status: 422
      end
    else 
      render json: {error: @message.errors.full_messages}, status: :forbidden
    end
  end

  def show
    @message = Message.find_by(id: params[:id])
    @conversation = Conversation.find_by(id: @message.conversation_id)
    if @conversation.sender_id == current_user.id || @conversation.recipient_id == current_user.id
      render 'show.json.jb'
    else
      render json: {}, status: :forbidden
    end
  end
end
