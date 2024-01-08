FactoryBot.define do
  factory :training_session do
    started_at = Time.now.beginning_of_day
    started_at { started_at }
    ended_at { started_at + 20.minutes }
    exercise_set { exercise_set }
    user { user }
  end
end