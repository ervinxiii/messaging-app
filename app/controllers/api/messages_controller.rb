class Api::MessagesController < ApiController
  def index
    #render json: Message.all
    render json: Message.where('(sender_id = :sender_id AND recipient_id = :recipient_id) OR (sender_id = :recipient_id AND recipient_id = :sender_id)', sender_id: current_user.id, recipient_id:params[:recipient])
  end

  def create
    message = Message.new message_params
    message.recipient_id = params[:message][:recipient]
    message.sender_id = current_user.id

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
