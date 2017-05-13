Rails.application.routes.draw do
  namespace :admin do
    resources :products
    resources :categories
  end

	get 'regulamin', 						to: "static#terms", 	 as: :terms
	get 'polityka-prywatnosci', to: "static#privacy",  as: :privacy
	get 'dostawa', 							to: "static#shipping", as: :shipping
	get 'o-sklepie', 						to: "static#about", 	 as: :about

  root to: "products#index"
  resources :products, 	 only: [:show, :index], path: "produkt"
  resources :categories, only: [:show], 				path: "kategoria"
end
