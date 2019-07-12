Rails.application.routes.draw do
  get 'top' => 'top#index'
  get 'activity' => 'top#activity'
  get 'performance' => 'top#performance'
  get 'infomation' => 'top#infomation'
  get 'members' => 'members#index'
end
