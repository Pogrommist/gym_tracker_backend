Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount_devise_token_auth_for 'User', at: 'auth'

  resources :exercise_sets, only: %i[index create update destroy]
  resources :exercise_registers, only: %i[create update destroy]
  resources :training_sessions, only: %i[create update]
end
