class ExerciseSet < ApplicationRecord
  belongs_to :user
  has_many :exercise_registers, dependent: :destroy
end
