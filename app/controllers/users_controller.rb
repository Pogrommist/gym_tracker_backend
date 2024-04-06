class UsersController < ApiController

  def get_profile
    render json: current_user
  end
end