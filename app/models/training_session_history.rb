class TrainingSessionHistory < ApplicationRecord
  belongs_to :training_session
  belongs_to :exercise
end
