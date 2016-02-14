class Api::MessagesController < ApiController
  def index
    render json: Message.all
  end

  def create
    message = Message.new message_params
    message.recipient_id = params[:message][:user]

    if message.save
      render json: message, status: 200
    else
      render json: message, status: 400
    end
  end

  def show
    message = Message.find(params[:id])
    render json: messsage
  end

  private
  def message_params
    params.require(:message).permit(:content, :sender_id, :recipient_id, :group_id)
  end
end
