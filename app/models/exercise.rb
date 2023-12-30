class Exercise < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    %w[created_at description id image_url name updated_at video_url]
  end
end
