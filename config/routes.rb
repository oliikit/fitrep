Rails.application.routes.draw do
  devise_for :users

  root 'static_pages#home'
  get 'news' => 'static_pages#news'

  resources :workout_sessions
  resources :reports
end
