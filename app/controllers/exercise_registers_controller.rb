class ExerciseRegistersController < ApiController
  before_action :find_exercise_set, only: [:create, :update, :destroy]

  EXERCISE_REGISTER_KEYS = %w[sets_amount reps_amount load exercise_id exercise_set_id].freeze

  def create
    @exercise_set.exercise_registers.insert_all(exercise_registers)

    head :ok
  end

  def update
    return head :not_found unless exercise_register

    exercise_register.update(exercise_register_params)
    render json: exercise_register
  end

  def destroy
    return head :not_found unless exercise_register

    render json: exercise_register.destroy!
  end

  private

  def exercise_register
    @exercise_register ||= @exercise_set.exercise_registers.find_by(id: params[:id])
  end

  def exercise_registers
    exercise_registers_params.to_h[:exercise_registers].map { |exercise_register| exercise_register }
  end

  def exercise_registers_params
    params.permit(exercise_registers: EXERCISE_REGISTER_KEYS)
  end

  def exercise_register_params
    params.permit(EXERCISE_REGISTER_KEYS)
  end

  def find_exercise_set
    @exercise_set = current_user.exercise_sets.find(params[:exercise_set_id])
  end
end
