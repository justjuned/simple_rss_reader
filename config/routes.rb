Rails.application.routes.draw do
	root 'items#index'

	resources :feeds
end
