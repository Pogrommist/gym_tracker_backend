class Exercise < ApplicationRecord
  has_many :exercise_registers, dependent: :destroy
  has_many :training_session_histories, dependent: :destroy

  def self.ransackable_attributes(auth_object = nil)
    %w[created_at description id image_url name updated_at video_url]
  end

  def self.ransackable_associations(auth_object = nil)
    ["exercise_registers"]
  end

end
