Rails.application.routes.draw do
	get 'regulamin', 						to: "static#terms", 	 as: :terms
	get 'polityka-prywatnosci', to: "static#privacy",  as: :privacy
	get 'dostawa', 							to: "static#shipping", as: :shipping
	get 'o-sklepie', 						to: "static#about", 	 as: :about

  root to: "products#index"
  resources :products, 	 only: [:show, :index]
  resources :categories, only: [:show]
end
