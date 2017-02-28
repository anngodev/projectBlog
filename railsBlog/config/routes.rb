Rails.application.routes.draw do
  devise_for :users
	resources :posts do
		resources :comments
	end

	root "posts#index"

	get "/bloggers", to: "pages#bloggers"

end