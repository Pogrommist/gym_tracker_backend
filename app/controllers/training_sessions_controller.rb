class TrainingSessionsController < ApiController
  before_action :find_exercise_set, only: [:create, :update]
  before_action :find_training_session, only: [:update]

  def create
    render json: @exercise_set.training_sessions.create(training_session_params.merge!(user_id: current_user.id))
  end

  def update
    @training_session.update(training_session_params.merge!(ended_at: Time.now))
    create_training_session_history

    render json: @training_session
  end

  private

  def create_training_session_history
    @training_session.training_session_histories.insert_all(training_session_histories)
  end

  def training_session_histories
    @training_session
      .exercise_set
      .exercise_registers
      .select(:sets_amount, :reps_amount, :load, :exercise_id)
      .map { |values| values.attributes.without('id') }
  end

  def training_session_params
    params.require(:training_session).permit( :exercise_set_id, :id)
  end

  def find_training_session
    @training_session ||= @exercise_set.training_sessions.find_by(id: params[:id])
  end

  def find_exercise_set
    @exercise_set = current_user.exercise_sets.find(training_session_params[:exercise_set_id])
  end
end
