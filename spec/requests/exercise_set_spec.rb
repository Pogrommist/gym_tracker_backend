require 'rails_helper'

RSpec.describe "Exercise sets", type: :request do
  let(:user) { create(:user) }
  let(:auth_tokens) { user.create_new_auth_token }
  let(:first_exercise_set) { create(:exercise_set, user: user) }
  let(:second_exercise_set) { create(:exercise_set, user: user) }

  it 'should render 2 exercise sets of user' do
    user.exercise_sets << [first_exercise_set, second_exercise_set]
    get '/exercise_sets', headers: auth_tokens
    expect(response).to be_successful and expect(JSON.parse(response.body).size).to eq 2
  end

  it 'should create exercise set for user' do
    set_attributes = create(:exercise_set, user: user).attributes
    post '/exercise_sets', params: { exercise_set: set_attributes }, headers: auth_tokens
    expect(response).to be_successful
  end

  it 'should update exercise set of user' do
    set_attributes = create(:exercise_set, user: user).attributes
    set_attributes['name'] = 'Running'
    put "/exercise_sets/#{set_attributes['id']}", params: { exercise_set: set_attributes }, headers: auth_tokens
    expect(response).to be_successful and expect(JSON.parse(response.body)['name']).to eq 'Running'
  end

end