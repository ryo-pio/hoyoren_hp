Rails.application.routes.draw do
  devise_for :users
  root to: 'top#index'
  get 'members/senko'
  get 'members/chiyokagura'
  get 'members/f'
  resources :users
  resources :members
  get 'home/index'
  get 'activities/index'
  get 'performances/index'
  get 'infomations/index'
end
