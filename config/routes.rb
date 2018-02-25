Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :locations
  root 'locations#new'
  get 'index', to: 'travel_times#index', as: :index
end
