Rails.application.routes.draw do
  resources :cadastros do
    resources :pessoas, :empresas, only: [:new, :create, :destroy, :edit, :update]
  end
  # get '/cadastros/:cadastro_id/pessoas/:id/edit', :to => 'pessoas#edit', :as => :edit
  # get '/cadastros/:cadastro_id/pessoas/:id', :to => 'pessoas#update', :as => :index
  # # post '/cadastros/:cadastro_id/pessoas', :to => 'pessoas#create'
  # post '/cadastros/:cadastro_id/pessoas/:id', :to => 'cadastros#index'
  root to:'cadastros#index'
end
