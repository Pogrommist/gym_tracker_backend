FactoryBot.define do
  password_value = 'password'

  factory :user do
    name { 'John Doe' }
    email { 'test@example.com' }
    password { password_value }
    password_confirmation { password_value }
    exercise_sets { [] }
  end
end
