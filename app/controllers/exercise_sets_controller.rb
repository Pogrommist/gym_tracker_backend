class ExerciseSetsController < ApiController
  before_action :find_exercise, except: [:create, :index]

  def index
    render json: current_user.exercise_sets
  end

  def create
    render json: current_user.exercise_sets.create(exercise_set_params)
  end

  def update
    @exercise_set.update(exercise_set_params)

    render json: @exercise_set
  end

  def destroy
    render json: @exercise_set.destroy!
  end

  private

  def find_exercise
    @exercise_set = User.last.exercise_sets.find(params[:id])
  end

  def exercise_set_params
    params.require(:exercise_set).permit(:name)
  end
end
