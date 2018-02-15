class MessagesController < ApplicationController
  before_action :set_current_conversation, only: [:edit, :update, :show]

  layout "user"
  #
  # before_action do
  #  @conversation = Conversation.find(params[:conversation_id])
  # end

  def show
    @messages = @conversation.messages
  end

  def new
    @conversation = Conversation.find_by(id: params[:conversation_id])
    @message = Message.new
  end

  def create
    @conversation = Conversation.find_by(id: params[:message][:conversation_id])
    @message = @conversation.messages.build(message_params)
    if @message.save
      redirect_to user_path(current_user)
      # user_conversation_path(current_user, @conversation)
    end
  end


  def update
    @conversation = Conversation.find_by(id: params[:message][:conversation_id])
    @message = @conversation.messages.update(message_params)
    if @message.save
      redirect_to user_conversation_path(current_user, @conversation)
    end
  end

  def edit
    @messages = @conversation.messages

  end


  private

  def message_params
    params.require(:message).permit(:body, :user_id)
  end

  def set_current_conversation
    @conversation = Conversation.find(params[:conversation_id])
  end

end
