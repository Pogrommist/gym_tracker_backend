class ExerciseSet < ApplicationRecord
  belongs_to :user
  has_many :exercise_registers, dependent: :destroy
  has_many :training_sessions, dependent: :destroy
end
