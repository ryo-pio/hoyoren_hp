Rails.application.routes.draw do
  root to: 'top#index'
  get 'home/index'
  get 'members/index'
  get 'activities/index'
  get 'performances/index'
  get 'infomations/index'
end
