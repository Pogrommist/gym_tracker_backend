class ExerciseRegister < ApplicationRecord
  belongs_to :exercise_set
  belongs_to :exercise

  def self.ransackable_attributes(auth_object = nil)
    %w[created_at exercise_id exercise_set_id id load reps_amount sets_amount updated_at]
  end

end
