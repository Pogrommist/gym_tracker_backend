class ExercisesController < ApiController

  def index
    render json: Exercise.all
  end

  def search
    render json: Exercise.where('lower(name) iLIKE :prefix', prefix: "%#{params[:name]}%")
  end

end
