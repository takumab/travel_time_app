Rails.application.routes.draw do

  root 'locations#new'

  resources :locations do
    resource :destinations
  end

  get 'index', to: 'travel_times#index', as: :index
end
