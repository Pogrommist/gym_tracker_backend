FactoryBot.define do
  factory :exercise do
    name { 'Push-ups' }
    description { 'This is an awesome exercise !' }
    image_url { 'https://google.com' }
    video_url { 'https://youtube.com' }
  end
end