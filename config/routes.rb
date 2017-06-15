Rails.application.routes.draw do
  resources :pessoas
  root 'pessoas#index'
end
