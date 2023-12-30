class ExerciseRegister < ApplicationRecord
  belongs_to :exercise_set
  belongs_to :exercise
end
