class TrainingSession < ApplicationRecord
  belongs_to :exercise_set
  belongs_to :user

  has_many :training_session_histories, dependent: :destroy
end
