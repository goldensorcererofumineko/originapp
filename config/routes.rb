Rails.application.routes.draw do
  get 'hello/index'
  devise_for :users
  resources :activities, only:[:index, :new, :create]
end
