Rails.application.routes.draw do
  root 'shovels#index'
  resources :shovels
end
