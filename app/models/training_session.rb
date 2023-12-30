class TrainingSession < ApplicationRecord
  belongs_to :exercise_set
  belongs_to :user
end
