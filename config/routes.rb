Rails.application.routes.draw do
	resources :setors
	resources :cadastros do
		resources :pessoas, :empresas, only: [:new, :create, :destroy, :edit, :update, :index]
	end
	root to:'cadastros#index'
	get '*path', to: 'dash_board#index'
end
