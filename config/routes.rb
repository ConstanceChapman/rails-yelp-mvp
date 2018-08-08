Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'restaurants#index'
  resources :restaurants, only: [:index, :create, :new, :show] do
    get 'reviews/new', to: 'reviews#new', as: 'new_review'
    post 'reviews', to: 'reviews#create', as: 'reviews'
  end
end
