Rails.application.routes.draw do
  devise_for :users
  resources :activities, only: :index
end
