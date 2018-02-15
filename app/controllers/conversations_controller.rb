class ConversationsController < ApplicationController
  before_action :authenticate_user
  before_action :set_current_conversation, only: [:edit, :update]
  skip_before_action :verify_authenticity_token, :only => :create

  layout "user"

  def index
    @users = User.all
    @conversations = Conversation.all
  end

  def new
    @conversation = Conversation.new
  end

  def create
    @conversation = Conversation.find_or_create_by(recipient_id: params[:user_id], sender_id: current_user.id)
    redirect_to  new_user_conversation_message_path(current_user, @conversation)
  end

  def show
    @conversation = Conversation.find_by(id: params[:id])
  end




  private

  def conversation_params
    params.permit(:sender_id, :recipient_id)
  end

  def set_current_conversation
    @conversation = Conversation.find_by(id: params[:conversation_id])
  end

end
