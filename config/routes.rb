Rails.application.routes.draw do
  get 'top' => 'top#index'
  get 'member' => 'top#member'
  get 'activity' => 'top#activity'
  get 'performance' => 'top#performance'
  get 'infomation' => 'top#infomation'
end
