class Api::MessagesController < ApplicationController

  before_action :authenticate_user


  def index
    @messages = Messages.all.order(created_at: :desc)
    render 'index.json.jb'
  end

  def create
    @conversation = Conversation.find_by(id: params[:conversation_id])
    if @conversation.sender_id == current_user.id || @conversation.recipient_id == current_user.id
      @message = Message.new(
        user_id: current_user.id,
        text: params[:text],
        conversation_id: params[:conversation_id]
      )
      if @message.save
        render 'show.json.jb'
      else
        render json: {error: @message.errors.full_messages}, status: :bad_request
      end
    else 
      render json: {error: @message.errors.full_messages}, status: :forbidden
    end

    ActionCable.server.broadcast "messages_channel", {
      id: @message.id,
      name: @message.user.full_name,
      text: @message.text,
      created_at: @message.created_at
    }
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
