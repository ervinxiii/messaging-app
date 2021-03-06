class Api::UsersController < ApiController

  def index
    render json: User.all
  end

  def show
    user = User.find(params[:id])

    unless user == current_user
      redirect_to :back, :alert => "Access denied."
    end
    render json: user
  end
end
