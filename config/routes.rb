Rails.application.routes.draw do
  root to: 'top#index'
  get 'top/index'
  get 'members/index'
  get 'activities/index'
  get 'performances/index'
  get 'infomations/index'
end
