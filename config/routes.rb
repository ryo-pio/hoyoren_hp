Rails.application.routes.draw do
  devise_for :users
  root to: 'top#index'
  get 'home/index'
  get 'members/index'
  get 'activities/index'
  get 'performances/index'
  get 'infomations/index'
  resources :users
  resources :members
end
