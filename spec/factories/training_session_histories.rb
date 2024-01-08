FactoryBot.define do
  factory :training_session_histories do
    sets_amount { 4 }
    reps_amount { 10 }
    load { 15 }
    exercise { exercise }
    training_session { training_session }
  end
end