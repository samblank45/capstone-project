class Api::ConversationsController < ApplicationController

  def index
    @conversations = Conversation.where(sender_id: current_user.id)
    render 'index.json.jb'
  end
end
