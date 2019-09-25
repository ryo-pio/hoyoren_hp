Rails.application.routes.draw do
  devise_for :users
  root to: 'top#index'
  get 'home/index'
  get 'members/index'
  get 'members/f_member'
  get 'members/senko_member'
  get 'activities/index'
  get 'performances/index'
  get 'infomations/index'
  resources :users
  resources :members, only: [:index, :create, :new]
end
