FactoryBot.define do
  factory :exercise_register do
    sets_amount { 4 }
    reps_amount { 10 }
    load { 15 }
    exercise { exercise }
    exercise_set { exercise_set }
  end
end