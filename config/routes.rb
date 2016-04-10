Rails.application.routes.draw do
  get 'users/new'

  root 'static_pages#home'
  get 'news' => 'static_pages#news'

  resources :workout_sessions
  resources :reports
end
