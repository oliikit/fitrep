Rails.application.routes.draw do
  get 'users/new'
  root 'static_pages#home'
  resources :workout_sessions
  resources :reports
end
