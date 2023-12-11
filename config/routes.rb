Rails.application.routes.draw do
  devise_for :users
  root to: "/"
  resources :activities, only:[:index, :new, :create]
end
