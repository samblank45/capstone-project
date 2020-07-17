class Api::ConversationsController < ApplicationController

  before_action :authenticate_user

  def index
    @conversations = current_user.conversations
    render 'index.json.jb'
  end

  def create
    @conversation = Conversation.new(
      sender_id: current_user.id,
      recipient_id: params[:recipient_id]
    )
    if @conversation.save
      render 'show.json.jb'
    else
      render json: { errors: @conversation.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @conversation = Conversation.find_by(id: params[:id])
    if @conversation.sender_id == current_user.id || @conversation.recipient_id == current_user.id 
      render 'show.json.jb'
    else
      render json: {errors: @conversation.errors.full_messages}, status: :forbidden
    end
  end

end
